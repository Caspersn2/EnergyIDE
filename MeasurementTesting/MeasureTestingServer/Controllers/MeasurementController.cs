using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Threading;
using MeasurementTesting;
using MeasurementTesting.Attributes;
using MeasurementTesting.InternalClasses;
using Measurement.Repositories;
using System.Text.Json;

namespace MeasureTestingServer.Controllers
{
    [ApiController]
    [Route("")]
    public class MeasurementController : ControllerBase
    {
        public MeasurementRepository MeasurementRepo;
        public MeasurementController()
        {
            this.MeasurementRepo = new MeasurementRepository();
        }

        [HttpGet]
        public ActionResult<string> GetProgress() =>
            Ok(JsonSerializer.Serialize(MeasurementRepo.GetMeasurements()));
        

        [HttpPut("getmethods")]
        public ActionResult<dynamic> GetMethods([FromBody] FilesViewModel model) =>
            Ok(JsonSerializer.Serialize(MeasurementRepo.GetMethods(model.Files, model.Type)));
        

        [HttpPut]
        public ActionResult<string> Start([FromBody] StartViewModel model)
        {
            //returns true if it has started
            var response = "none";
            try {
                response = MeasurementRepo.Start(model.Ids);
            } catch(Exception e){
                response = "Not started";
            }

            return Ok(response);
        }

        [HttpDelete]
        public ActionResult<bool> Stop()
        {
            MeasurementRepo.Stop();
            return Ok(true);
        }
    }

    public class StartViewModel
    {
        public int[] Ids { get; set; }
    }

    public class ClassMethods
    {
        public Type CurrentClass { get; set; }
        public string AssemblyPath { get; set; }
        public MethodViewModel[] Methods { get; set; }
    }

    public class MethodViewModel 
    {
        public int Id { get; set; }
        public String[] Args { get; set; }
        public string Name { get; set; }
        public string StringRepresentation { get; set; }
    }

    public class FilesViewModel 
    {
        public string[] Files { get; set; }
        public string Type { get; set; }
    }

}
