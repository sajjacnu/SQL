select * from tblvideo
full join tblreview
on Unique_ID = Video_ref
order by Rating desc
;

