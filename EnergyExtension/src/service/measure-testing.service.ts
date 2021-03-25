import axios from 'axios';
import { pathToFileURL } from 'url';
import { MeasureProgess, ActivateClass } from '../messageParsers/MeasurePasers';

export class MeasureTestingService {
    public static checkRAPLStatus(): Promise<MeasureProgess | string> {
        return new Promise(async (resolve, reject) => {
            try {
                const response = await axios.get('http://localhost:5000');
                if (response.status == 200) { resolve(<MeasureProgess>response.data); }
                else { reject(response.status); }
            } catch (exception) {
                reject(exception);
            }
        });
    }

    public static startRAPL(ids: number[]): Promise<MeasureProgess | string> {
        return this.callService('http://localhost:5000/', axios.put, { ids: ids });
    }

    public static stopRAPL(): Promise<MeasureProgess | string> {
        return this.callService('http://localhost:5000/', axios.delete);
    }

    public static startML(activeClasses: ActivateClass[]): Promise<MeasureProgess | string> {
        return this.callService('http://localhost:5002/post', axios.post, { activeClasses: activeClasses });
    }

    public static getMethods(files: string[], type: string): Promise<ActivateClass[]> {
        return new Promise(async (resolve, reject) => {
            try {
                const response = await axios.put("http://localhost:5000/GetMethods", { files: files, type: type });
                if (response.status == 200) {
                    resolve(<ActivateClass[]>response.data);
                }
                else {
                    console.log("Did not get a valid response \n" + response);
                    reject([]);
                }
            } catch (exception) {
                console.log("Exception \n" + exception);
                reject([]);
            }
        });
    }

    static callService(url: string, httpMethod: any, data: any = null): Promise<MeasureProgess | string> {
        return new Promise(async (resolve, reject) => {
            try {
                let response;
                if (data != null) {
                    response = await httpMethod(url, data);
                }
                else {
                    response = await httpMethod(url);
                }
                if (response.status == 200) { resolve(response.data); }
                else { reject(response.status); }
            } catch (exception) {
                reject(exception);
            }
        });

    }
}