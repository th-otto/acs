ShowACSVersion:
[00013f38] 2079 000d a7e4            movea.l    $000DA7E4,a0
[00013f3e] 4e90                      jsr        (a0)
[00013f40] 4e75                      rts
ShowACSUpdate:
[00013f42] 2f0a                      move.l     a2,-(a7)
[00013f44] 45f9 0009 7db8            lea.l      $00097DB8,a2
[00013f4a] 224a                      movea.l    a2,a1
[00013f4c] 204a                      movea.l    a2,a0
[00013f4e] 4eb9 0005 1612            jsr        $00051612
[00013f54] 245f                      movea.l    (a7)+,a2
[00013f56] 4e75                      rts
AboutGUIEditor:
[00013f58] 2f0a                      move.l     a2,-(a7)
[00013f5a] 45f9 0009 7d16            lea.l      $00097D16,a2
[00013f60] 224a                      movea.l    a2,a1
[00013f62] 204a                      movea.l    a2,a0
[00013f64] 4eb9 0005 1612            jsr        $00051612
[00013f6a] 245f                      movea.l    (a7)+,a2
[00013f6c] 4e75                      rts
