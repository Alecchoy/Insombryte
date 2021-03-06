@events.each do |event|
    json.set! event.id do 
        json.partial! 'event', event: event 
        if event.photo.attached?
            json.photo url_for(event.photo)
        end
    end
end
