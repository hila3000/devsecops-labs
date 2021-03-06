[
  {
    "name": "safety-app",
    "image": "${app_image}",
    "cpu": ${fargate_cpu},
    "memory": ${fargate_memory},
    "networkMode": "awsvpc",
    "logConfiguration": {
        "logDriver": "awslogs",
        "options": {
          "awslogs-group": "/ecs/safety-app",
          "awslogs-region": "${aws_region}",
          "awslogs-stream-prefix": "ecs"
        }
    },
    "command": "safety",
    "environment": [        
        {"Name": "BUCKET_NAME", "Value": "${bucket_name}"}
    ]
  }
]