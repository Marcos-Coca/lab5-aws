import AWS from "aws-sdk";

const config = new AWS.Config({
  accessKeyId: "accessKeyId",
  secretAccessKey: "secretAccessKey",
  region: "us-east-2",
});

export const s3 = new AWS.S3(config);
export const recognition = new AWS.Rekognition(config);

export const BUCKET = "padron-elahine";
