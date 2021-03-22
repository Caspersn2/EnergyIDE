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
        public ActionResult<string> GetProgress() 
        {
            return Ok(JsonSerializer.Serialize(this.MeasurementRepo.GetMeasurements()));
        }

        [HttpPut("getmethods")]
        public ActionResult<GetMethodsViewModel> GetMethods([FromBody] FilesViewModel model)
        {
            
            return Ok(MeasurementRepo.GetMethods(model.Files));
        }

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

    public class GetMethodsViewModel
    {
        public string key { get; set; }
        public MethodViewModel[] value { get; set; }
    }

    public class TypeMethods
    {
        public Type type { get; set; }
        public string DllFile { get; set; }
        public List<MethodViewModel> methods { get; set; }
    }

    public class MethodViewModel 
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string DllFile { get; set; }
    }

    public class FilesViewModel 
    {
        public string[] Files { get; set; }
    }

}
