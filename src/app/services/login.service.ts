import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class LoginService {
  apiUrl = 'http://localhost:8080'

  constructor(private http: HttpClient) {}

  // Method to send a POST request
  postData(payload?: any, isLogin?:boolean): Observable<any> {
    
    const headers = new HttpHeaders({
      'Content-Type': 'application/json'
    });
    console.log("test2");
    if(isLogin){
      return this.http.post<any>(`${this.apiUrl}/users/exists`, payload, { headers });
    } else {

      return this.http.post<any>(`${this.apiUrl}/users`, payload, { headers });
    }
  }


  getJobs(){
    const headers = new HttpHeaders({
      'Content-Type': 'application/json'
    });
    console.log("test2");
    
      return this.http.get<any>(`${this.apiUrl}/jobs`,  { headers });
    
  }


}
