module Routes.DetailedQuotePage exposing (..)

import Components.Buttons exposing (..)
import Components.TestimonialSection exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


detailedQuotePage : Model -> Html Msg
detailedQuotePage model =
    div [ class " mh5-ns" ]
        [ div [ class "gray f2 b ma4" ] [ text "Real Stories" ]
        , div [ class "gray fw1 mt3 mb3 mb4-ns w-50-l ma4" ] [ text "Below is a real story from someone we've helped. We provide all the services that they used. If you think something they've used would help you as well or if you're still not sure please get in touch with us." ]
        , div [ class "purple-line mb4 ma4" ] []
        , div [ class "ma3" ]
            [ retrieveTestimonial model ]
        , div [ class "dn-l" ] [ purpleButton "See our services" "services" ]
        , div [ class "dn-l" ] [ purpleButton "Contact us" "talk-to-us" ]
        , clearWhiteButton "Back to stories" "quotes"
        ]
