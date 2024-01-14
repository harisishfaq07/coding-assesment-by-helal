namespace :import do
    desc "Import CSV files"
    task movies: :environment do
      file_path = '/home/harris/Desktop/job-application-backend-test/movies.csv' 
  
      require 'csv'
  
      CSV.foreach(file_path, headers: true) do |row|
        Movie.create!(
          movie: row['Movie'],
          description: row['Description'],
          year: row['Year'],
          director: row['Director'],
          actor: row['Actor'],
          filming_location: row['Filming location'],
          country: row['Country']
        )
        sleep(3)
        puts "Movie import successfully"
      end
  
      puts "All Movies imported successfully!"
    end

    task reviews: :environment do
        file_path = '/home/harris/Desktop/job-application-backend-test/reviews.csv' 
    
        require 'csv'
    
        CSV.foreach(file_path, headers: true) do |row|
          Review.create!(
            movie: row['Movie'],
            user: row['User'],
            stars: row['Stars'],
            review: row['Review'],
            movie_id: Movie.find_by(movie: row['Movie']).id
          )
          sleep(3)
          puts "Review import successfully"
        end
    
        puts "All Reviews imported successfully!"
      end
  end
  