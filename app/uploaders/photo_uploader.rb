class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process eager: true # Force version generation at upload time.

  # process convert: 'jpg'

  version :png do
    process convert: 'png'
    # more processors
    process processed: :png
  end
  version :jpeg do
    process convert: 'jpg'
    # more procesors
    process processed: :jpg
  end


  version :thumnail do
    resize_to_fit 256, 256
  end

  version :bright_face do
    cloudinary_transformation effect: "brightness:30", radius: 20,
      width: 150, height: 150, crop: :thumb, gravity: :face
  end
end
