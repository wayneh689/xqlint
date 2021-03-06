declare namespace opt = "http://zorba.io/options/optimizer";

declare option opt:enable "for-serialization-only";

declare variable $input-context external;

let $auction := doc($input-context) 
return
  for $p in $auction/site/people/person
  let $a :=
    for $t in $auction/site/closed_auctions/closed_auction
    where $t/buyer/@person = $p/@id
    return $t
  return <item person="{$p/name/text()}">{count($a)}</item>
