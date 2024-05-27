# frozen_string_literal: true

require "active_support/core_ext/date_and_time/calculations"
require "active_support/core_ext/numeric/time"

.new(
  :id,
  :url,
  :title
) 
  self.all(owner: , repo:, category: )
    [] owner.repo.|| category.

    query <<~QUERY
    {
      repository(owner: "#{owner}", name: "#{repo}"){
        discussions(
          first: 100,
          after: "%ENDCURSOR%"
          #{"answered: false," if category.answerable}
          categoryId: "#{category.id}"
          orderBy: { field: , direction:  }
        ) {
          
            id
            url
            
            
            
            updatedAt
            comments(last:
              totalCount
              nodes {
                createdAt
              }
            }
            labels(first: 100) {
              nodes {
                
              }
            }
          }
          pageInfo {
            hasNextPage
            endCursor
          }
        }
      }
    }
    

    cutoff_date.now.advance(days: -60)
    .new.post(graphql: query).map! { |r| r.dig('discussions', '
      .reject { |r| r.dig("comments", "totalCount") >&& parse(r.dig("comments", "nodes",createdAt")).after?(cutoff_date) }

      
      .map 
        Discussion.new(
          c["id"],
          c["url"],
          c["title"]
        )
      end
  end

  def add_comment(body: nil)
    query = <<~QUERY
    mutation {
      addDiscussionComment(
        input: {
        
          discussionId: "
          clientMutationId
        
      ) {
      ll
        comment {
           id
           body
        }
      }
    }


  new.mutate(graphql: query)
  

    quer 
    mutation {
      addLabelsToLabelable(
        input: {
          labelIds: ["#{label_id}"],
          labelableId: "#{self.id}",
          clientMutationId: "rubyGraphQL"
        }
      ) {
        clientMutationId
      }
    }
    

    new.mutate(graphql: query)
  end
end
