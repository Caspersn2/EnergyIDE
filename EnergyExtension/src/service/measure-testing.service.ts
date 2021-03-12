import axios from 'axios';
import { MeasureProgess } from '../messageParsers/MeasurePasers';

export class MeasureTestingService
{
    public static checkStatus(): Promise<MeasureProgess | string> {
        return new Promise(async (resolve, reject) => {
            try {
                const response = await axios.get('http://localhost:5000');
                if (response.status == 200)
                    {resolve(<MeasureProgess>response.data);}
                else
                    {reject(response.status);}
            } catch(exception){
                reject(exception);
            }
        });
    }

    public static startRunning(ids: number[]): Promise<MeasureProgess | string>
    {
        return new Promise(async (resolve, reject) => {
            try {
                const response = await axios.put('http://localhost:5000/', { ids: ids});
                if (response.status == 200)
                    {resolve(response.data);}
                else
                    {reject(response.status);}
            } catch(exception){
                reject(exception);
            }
        });
    }

    public static stopRunning(): Promise<MeasureProgess | string>
    {
        return new Promise(async (resolve, reject) => {
            try {
                const response = await axios.delete('http://localhost:5000');
                if (response.status == 200)
                    {resolve(response.data);}
                else
                    {reject(response.status);}
            } catch(exception){
                reject(exception);
            }
        });
    }

    public static getMethods(files: string[]): Promise<{ key: string, value: { id: string, name: string }[] }[]> {
        return new Promise(async (resolve, reject) => {
            try {
                const response = await axios.put("http://localhost:5000/GetMethods", { files: files });
                if (response.status == 200){
                    resolve(response.data);
                }
                else {
                    console.log("Did not get a valid response");
                    console.log(response);
                    reject([]);
                }
            } catch(exception) {
                console.log("Exception: ");
                console.log(exception);
                reject([]);
            }
        });
    }
}
