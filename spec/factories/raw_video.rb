FactoryGirl.define do
  factory :raw_video, :class => Refinery::RawVideo do
    file Refinery::Videos::Engine.root.join("spec/samples/test-movie.mov")
    
    factory :raw_video_with_encoded do
      after_create { |video| FactoryGirl.create(:encoded_video, :raw_video => video) }
    end
  end
end
