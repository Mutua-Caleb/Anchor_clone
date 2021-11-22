# Planning
  - Answer questions
  - User stories 
  - Model our data 
  - Think through the pages we need in our app 
  
  
  # Answer Questions
  1. What are we building? 
  2. Who are we building it for?
  3. What features do we want to have? 
   
   1. Podcasting Network. A place for podcast creators to add episodes of their podcast for their audiences to listen to. 
   2. Podcast creators and podcast's audience 
   3. What features 
      - Users(aka podcasts), sign up, sign in /sign out 
      - Authentication so that a user can only access their own content 
      - CRUD for podcast episodes
      - Image uploading 
      - MP3 Uploading 
      - Store assets on Amazon S3 
      - Launch Application live on Heroku
   

# User stories
As, a user, I want to **Blank**  because **Blank**


- As a users, I want to be able to explore/ discover new podcast so that I can find new stuff to listen to. 
- As a user, I want to be able to sign up and create a podcast, so that my audience can listen to my podcast episodes. 
- As a user, I want to be able to listen to podcast mp3
- As an authorized user, I want to be able to sign in and out so that I can access my account 
- As an authorized user, I want to be able to edit or delete my podcast episodes, so that I can manage my podcast 
- As an authorized user, I want ot be able to add images(thumbnails) to my podcast episodes, so that each episode can be uniquely recognizable
- as an authorized user, I want to be able to upload MP3s
- As an authorized user, I want to be able to add podcast episodes so that my audience can listen 


# Model our data 
**User** `has_many :podcasts`
```rb
 - Email 
 - first name 
 - last name 
 - password 
```
**Podcast** `belongs_to :user` &  `has_many :episodes`
```ruby
- Title 
- Description 
- Thumbnail 
- Episode 
- Itunes link 
- Stitcher Link 
- Podbay link
```
**Episode** `belongs_to :podcast`
```ruby
- Title 
- Description 
- Podcast ID 
- Thumbnail 
- Mp3 
```

# Pages
- Welcome page(welcome#index)
- Sign In (session#new)
- Sign Up (registration#new)
- Podcasts (podcast#new)
- Podcast Single (podcast#show)
- Podcast Edit(Podcast#edit)
- Episode Page(episode#show)
- Episode New(episode#new)
- Episode Edit(episode#edit)
- Dashboard (podcast#dashboard)