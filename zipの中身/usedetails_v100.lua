--書き換え方
---- textobj をTextMeshProの名前に書き変える
---- messagetext を表示させたいメッセージに書き変える
---- ※判定させたいSubItemがIsKinematicがオフの場合
------ onTriggerEnter を onCollisionEnter に書き換える
------ onTriggerExit を onCollisionExit に書き換える

--触った時
function onTriggerEnter(item, hit)
    if (hit == "HandPointMarker") or (item == "HandPointMarker") then
        vci.assets._ALL_SetText("textobj", "messagetext")
    end
end
--手を離した時
function onTriggerExit(item, hit)
    if (hit == "HandPointMarker") or (item == "HandPointMarker") then
        vci.assets._ALL_SetText("textobj", "")
    end
end