package tnw

import com.cloudinary.Transformation
import org.springframework.web.multipart.MultipartFile

class Cloudinary {

    public com.cloudinary.Cloudinary cloudinary

    Cloudinary() {
        Map config = new HashMap();
        config.put("cloud_name", "lyshnia-limited")
        config.put("api_key", "739118628765371");
        config.put("api_secret", "8ox179PXwdYqX4C07Zchct0A2l0");
        cloudinary = new com.cloudinary.Cloudinary(config)
    }

    def doUpload(MultipartFile f, String dirName, String fileName) {

        Transformation transformation =
                new Transformation().width(200).height(200).crop("thumb").gravity("face");
        Map options = new HashMap(
                "eager": Arrays.asList(transformation),
                "public_id": "${dirName}/${fileName}".toString(),
                "overwrite": true
        );

        def response = cloudinary.uploader().upload(f.bytes, options);

        response;
    }

    static File convert(MultipartFile file) {
        File convFile = new File(file.getOriginalFilename());
        convFile.createNewFile();
        FileOutputStream fos = new FileOutputStream(convFile);
        fos.write(file.getBytes());
        fos.close();
        return convFile;
    }
}
