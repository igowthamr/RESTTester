package com.acceptable.dmg.services.acceptables.app.model;

import org.springframework.http.HttpMethod;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 *  on 7/17/17.
 */
@Entity
public class Request implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(length = 1024)
    private String uriPath;

    @Column(length = 1024)
    @ElementCollection
    private List<HttpHeader> headers= new ArrayList<HttpHeader>();

    @Column(length = 2048)
    private HttpBody body;

    //private String statusCode;



    private HttpMethod method = HttpMethod.GET;

    public String getUriPath() {
        return uriPath;
    }

    public void setUriPath(String uriPath) {
        this.uriPath = uriPath;
    }

    public List<HttpHeader> getHeaders() {
        return headers;
    }


    public void setHeaders(List<HttpHeader> headers) {
        this.headers = headers;
    }

    public HttpBody getBody() {
        return body;
    }

    public void setBody(HttpBody body) {
        this.body = body;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public HttpMethod getMethod() {
        return method;
    }

    public void setMethod(HttpMethod method) {
        this.method = method;
    }




}
