# frozen_string_literal: true

require "active_support/core_ext/date_and_time/calculations"
require "active_support/core_ext/numeric/time"

Discussion = Struct.new(
  :id,
  :url,
  :tit
  .all(owner: nil, repo: nil, category: nil)
    return [] if owner.nil? || repo.nil? || category.nil?

    query = <<~QUERY
    {
      repository(owner: "#{owner}", name: "#{repo}"){
        discussions(
          first: 100,
          after: "%ENDCURSOR%"
          #{"answered: false," if category.answerable}
          categoryId: "#{category.id}"
          orderBy: { field: CREATED_AT, direction: ASC }
        ) {
          nodes {
            id
            url
            title
            closed
            locked
            updatedAt
            comments(last: 1) {
              totalCount
              nodes {
                createdAt
              }
            }
            labels(first: 100) {
              nodes {
                name
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
    QUERY
 
  
      .

      
}
")).after?(cutoff_date) 
 }.include
      .map do |c|
        Discussion.new(
    
          
        
        )
      end
  end

  def add_comment(body:
    query = <<~QUERY
    mutation {
      addDiscussionComment(
        input: {
          body: "#{body}",
          discussionId: 
          clientMutationId: 
        }
      ) {
      
    
           
           
        }
      }
    }
    QUERY




        }
      ) 
      }
    }
    QUERY

    GitHub.new.mutate(graphql:
