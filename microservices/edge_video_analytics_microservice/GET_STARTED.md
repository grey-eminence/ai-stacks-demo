# Usage & Configuration

## Introduction
Do proident laborum elit exercitation non pariatur quis amet enim consequat laborum sint ea cillum. Ipsum aliquip voluptate sit ullamco dolor consectetur. Consequat aute esse ea anim aliqua labore ut ipsum velit nostrud.

## Function_1 API
**Description**

Eiusmod Lorem fugiat laboris consequat commodo anim ea dolor velit fugiat nisi. Minim aliquip cillum mollit ea enim aliquip ut consectetur cillum. Laborum cupidatat excepteur eu pariatur commodo exercitation laborum. Ut in in ea exercitation amet nulla do irure.

**URL**

```
GET http://${REST_URL}:${REST_PORT}/v1/${MODEL_NAME}/versions/${MODEL_VERSION}
```

**Response format**

If successful, returns a JSON of following format :
```JSON
{
  "model_version_status":[
    {
      "version": <model version>|<string>,
      "state": <model state>|<string>,
      "status": {
        "error_code": <error code>|<string>,
        "error_message": <error message>|<string>
      }
    }
  ]
}
```

**Usage Example**
```
$ curl http://localhost:8001/v1/models/person-detection/versions/1
```

```JSON
{
  'model_version_status':[
    {
      'version': '1',
      'state': 'AVAILABLE',
      'status': {
        'error_code': 'OK',
        'error_message': ''
      }
    }
  ]
}
```
