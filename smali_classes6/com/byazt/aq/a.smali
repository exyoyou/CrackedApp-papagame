.class public Lcom/byazt/aq/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x79e,
        0x22
    }
.end annotation


# instance fields
.field public a:F

.field public aw:I

.field public az:I

.field public b:Ljava/lang/String;

.field public bm:Z

.field public bx:I

.field public c:F

.field public ca:J

.field public cf:Lorg/json/JSONObject;

.field public cl:Ljava/lang/String;

.field public cu:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public da:F

.field public di:Ljava/lang/String;

.field public dz:Z

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ej:I

.field public eo:Ljava/lang/String;

.field public f:I

.field public g:I

.field public gk:Ljava/lang/String;

.field public gr:Ljava/lang/String;

.field public gt:Ljava/lang/String;

.field public gu:Ljava/lang/String;

.field public gx:Z

.field public gy:I

.field public h:D

.field public hd:I

.field public hg:I

.field public hj:I

.field public hq:I

.field public i:F

.field public ic:D

.field public ij:I

.field public ir:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/aq/c;",
            ">;"
        }
    .end annotation
.end field

.field public is:I

.field public iu:Ljava/lang/String;

.field public iy:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public jg:Z

.field public jt:I

.field public k:I

.field public kk:I

.field public kp:Z

.field public kz:I

.field public l:Z

.field public lo:I

.field public lr:I

.field public lt:Z

.field public m:Ljava/lang/String;

.field public ma:I

.field public md:D

.field public mm:Z

.field public mq:Z

.field public my:Ljava/lang/String;

.field public n:Z

.field public nb:I

.field public nc:Ljava/lang/String;

.field public nl:Ljava/lang/String;

.field public nt:Z

.field public nu:Ljava/lang/String;

.field public nx:Ljava/lang/String;

.field public ny:Z

.field public or:Ljava/lang/String;

.field public os:I

.field public oz:I

.field public p:I

.field public pe:Z

.field public pf:I

.field public pl:Z

.field public pn:D

.field public pu:Ljava/lang/String;

.field public q:Lorg/json/JSONObject;

.field public qp:Z

.field public qy:Ljava/lang/String;

.field public r:I

.field public rh:Ljava/lang/String;

.field public rl:Ljava/lang/String;

.field public s:I

.field public sd:I

.field public sl:D

.field public sp:F

.field public sv:I

.field public t:D

.field public tk:Z

.field public to:Z

.field public tt:F

.field public tx:Z

.field public u:Ljava/lang/String;

.field public uj:F

.field public v:I

.field public ve:F

.field public vi:Ljava/lang/String;

.field public vp:Lorg/json/JSONObject;

.field public w:I

.field public x:F

.field public xd:I

.field public y:I

.field public yf:I

.field public yo:Lorg/json/JSONObject;

.field public yp:Ljava/lang/String;

.field public yv:I

.field public z:Ljava/lang/String;

.field public zb:Ljava/lang/String;

.field public zm:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/byazt/aq/a;->ca:J

    .line 7
    .line 8
    return-void
.end method

.method public static c(Lorg/json/JSONObject;)Lcom/byazt/aq/a;
    .locals 13

    const-string v0, "triggerSlideMinDistance"

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v1, Lcom/byazt/aq/a;

    invoke-direct {v1}, Lcom/byazt/aq/a;-><init>()V

    const-string v2, "adType"

    const-string v3, "embeded"

    .line 2
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->tt(Ljava/lang/String;)V

    const-string v2, "clickArea"

    const-string v3, "creative"

    .line 3
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->z(Ljava/lang/String;)V

    const-string v2, "clickTigger"

    const-string v3, "click"

    .line 4
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->m(Ljava/lang/String;)V

    const-string v2, "fontFamily"

    const-string v3, "PingFangSC"

    .line 5
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->ve(Ljava/lang/String;)V

    const-string v2, "textAlign"

    const-string v3, "left"

    .line 6
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->uj(Ljava/lang/String;)V

    const-string v2, "color"

    const-string v4, "#999999"

    .line 7
    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->n(Ljava/lang/String;)V

    const-string v2, "bgColor"

    const-string v4, "transparent"

    .line 8
    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->a(Ljava/lang/String;)V

    const-string v2, "bgImgUrl"

    const-string v4, ""

    .line 9
    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->sp(Ljava/lang/String;)V

    const-string v2, "bgImgData"

    .line 10
    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/byazt/aq/a;->md(Ljava/lang/String;)V

    const-string v2, "borderColor"

    const-string v5, "#000000"

    .line 11
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->x(Ljava/lang/String;)V

    const-string v2, "borderStyle"

    const-string v5, "solid"

    .line 12
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->i(Ljava/lang/String;)V

    const-string v2, "heightMode"

    const-string v5, "auto"

    .line 13
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->da(Ljava/lang/String;)V

    const-string v2, "widthMode"

    const-string v5, "fixed"

    .line 14
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->sl(Ljava/lang/String;)V

    const-string v2, "interactText"

    .line 15
    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->t(Ljava/lang/String;)V

    const-string v2, "isShowBgControl"

    const/4 v5, 0x0

    .line 16
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->ve(Z)V

    const-string v2, "interactBgColor"

    .line 17
    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->u(Ljava/lang/String;)V

    const-string v2, "interactPosition"

    .line 18
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_1

    const-string v8, "translateY"

    .line 19
    invoke-virtual {v2, v8, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/byazt/aq/a;->sp(I)V

    const-string v8, "translateX"

    .line 20
    invoke-virtual {v2, v8, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/byazt/aq/a;->x(I)V

    const-string v8, "scaleX"

    .line 21
    invoke-virtual {v2, v8, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/byazt/aq/a;->uj(D)V

    const-string v8, "scaleY"

    .line 22
    invoke-virtual {v2, v8, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/byazt/aq/a;->n(D)V

    :cond_1
    const-string v2, "interactType"

    .line 23
    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->yp(Ljava/lang/String;)V

    const-string v2, "interactSlideDirection"

    const/4 v8, -0x1

    .line 24
    invoke-virtual {p0, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->n(I)V

    const-string v2, "justifyHorizontal"

    const-string v8, "space-around"

    .line 25
    invoke-virtual {p0, v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->nu(Ljava/lang/String;)V

    const-string v2, "justifyVertical"

    const-string v8, "flex-start"

    .line 26
    invoke-virtual {p0, v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->rh(Ljava/lang/String;)V

    const-string v2, "timingStart"

    .line 27
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Lcom/byazt/aq/a;->tt(D)V

    const-string v2, "timingEnd"

    .line 28
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Lcom/byazt/aq/a;->ve(D)V

    const-string v2, "width"

    .line 29
    invoke-virtual {p0, v2, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v2, v9

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->uj(F)V

    const-string v2, "height"

    .line 30
    invoke-virtual {p0, v2, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v2, v9

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->ve(F)V

    const-string v2, "borderRadius"

    .line 31
    invoke-virtual {p0, v2, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v2, v9

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->c(F)V

    const-string v2, "borderSize"

    .line 32
    invoke-virtual {p0, v2, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v2, v9

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->tt(F)V

    const-string v2, "interactValidate"

    .line 33
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->tt(Z)V

    const-string v2, "fontSize"

    .line 34
    invoke-virtual {p0, v2, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v2, v9

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->i(F)V

    const-string v2, "paddingBottom"

    .line 35
    invoke-virtual {p0, v2, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v2, v9

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->n(F)V

    const-string v2, "paddingLeft"

    .line 36
    invoke-virtual {p0, v2, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v2, v9

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->a(F)V

    const-string v2, "paddingRight"

    .line 37
    invoke-virtual {p0, v2, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v2, v9

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->sp(F)V

    const-string v2, "paddingTop"

    .line 38
    invoke-virtual {p0, v2, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v2, v9

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->x(F)V

    const-string v2, "lineFeed"

    .line 39
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->uj(Z)V

    const-string v2, "lineCount"

    .line 40
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->i(I)V

    const-string v2, "lineHeight"

    const-wide v9, 0x3ff3333333333333L    # 1.2

    .line 41
    invoke-virtual {p0, v2, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Lcom/byazt/aq/a;->a(D)V

    const-string v2, "letterSpacing"

    .line 42
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->yp(I)V

    const-string v2, "isDataFixed"

    .line 43
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->n(Z)V

    const-string v2, "fontWeight"

    .line 44
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->z(I)V

    const-string v2, "lineLimit"

    .line 45
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->a(Z)V

    const-string v2, "position"

    .line 46
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->m(I)V

    const-string v2, "align"

    .line 47
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->my(Ljava/lang/String;)V

    const-string v2, "useLeft"

    .line 48
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->sp(Z)V

    const-string v2, "useRight"

    .line 49
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->x(Z)V

    const-string v2, "useTop"

    .line 50
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->i(Z)V

    const-string v2, "useBottom"

    .line 51
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->da(Z)V

    const-string v2, "data"

    .line 52
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->gt(Ljava/lang/String;)V

    const-string v2, "i18n"

    .line 53
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->tt(Lorg/json/JSONObject;)V

    const-string v2, "marginLeft"

    .line 54
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->t(I)V

    const-string v2, "marginRight"

    .line 55
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->u(I)V

    const-string v2, "marginTop"

    .line 56
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->da(I)V

    const-string v2, "marginBottom"

    .line 57
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->sl(I)V

    const-string v2, "tagMaxCount"

    .line 58
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->nu(I)V

    const-string v2, "allowTextFlow"

    .line 59
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->sl(Z)V

    const-string v2, "textFlowType"

    .line 60
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->rh(I)V

    const-string v2, "textFlowDuration"

    .line 61
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->my(I)V

    .line 62
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->gt(I)V

    const-string v2, "right"

    .line 63
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->rl(I)V

    const-string v2, "top"

    .line 64
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->qy(I)V

    const-string v2, "bottom"

    .line 65
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->gu(I)V

    const-string v2, "alignItems"

    .line 66
    invoke-virtual {p0, v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->rl(Ljava/lang/String;)V

    const-string v2, "direction"

    .line 67
    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->qy(Ljava/lang/String;)V

    const-string v2, "loop"

    .line 68
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->c(Z)V

    const-string v2, "zIndex"

    .line 69
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->gr(I)V

    const-string v2, "interactVisibleTime"

    .line 70
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->h(I)V

    const-string v2, "interactHiddenTime"

    .line 71
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->zm(I)V

    const-string v2, "interactEnableMask"

    .line 72
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->u(Z)V

    const-string v2, "interactWontHide"

    .line 73
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->yp(Z)V

    const-string v2, "bgGradient"

    .line 74
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->c(Ljava/lang/String;)V

    const-string v2, "areaType"

    .line 75
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->eo(I)V

    const-string v2, "interactSlideThreshold"

    .line 76
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->zb(I)V

    .line 77
    invoke-static {}, Lcom/byazt/sr/uj;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/16 v2, 0x78

    :goto_0
    const-string v3, "interactBottomDistance"

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->qp(I)V

    const-string v2, "openPlayableLandingPage"

    .line 78
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->rh(Z)V

    const-string v2, "video"

    .line 79
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->ve(Lorg/json/JSONObject;)V

    const-string v2, "image"

    .line 80
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->uj(Lorg/json/JSONObject;)V

    const-string v2, "borderShadowExtent"

    .line 81
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->or(I)V

    const-string v2, "bgGauseBlur"

    .line 82
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->z(Z)V

    const-string v2, "bgGauseBlurRadius"

    .line 83
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->cu(I)V

    const-string v2, "showTimeProgress"

    .line 84
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->m(Z)V

    const-string v2, "showPlayButton"

    .line 85
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->nu(Z)V

    const-string v2, "bgColorCg"

    .line 86
    invoke-virtual {p0, v2, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/byazt/aq/a;->c(D)V

    const-string v2, "bgMaterialCenterCalcColor"

    .line 87
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->a(I)V

    const-string v2, "borderTopLeftRadius"

    .line 88
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->tt(I)V

    const-string v2, "borderTopRightRadius"

    .line 89
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->c(I)V

    const-string v2, "borderBottomLeftRadius"

    .line 90
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->uj(I)V

    const-string v2, "borderBottomRightRadius"

    .line 91
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->ve(I)V

    const-string v2, "interactI18n"

    .line 92
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->n(Lorg/json/JSONObject;)V

    const-string v2, "imageObjectFit"

    .line 93
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->gr(Ljava/lang/String;)V

    const-string v2, "interactTitle"

    .line 94
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->zm(Ljava/lang/String;)V

    const-string v2, "interactTextPositionTop"

    .line 95
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->d(I)V

    const-string v2, "imageLottieTosPath"

    .line 96
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->gu(Ljava/lang/String;)V

    const-string v2, "animationsLoop"

    .line 97
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->t(Z)V

    const-string v2, "lottieAppNameMaxLength"

    .line 98
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->yv(I)V

    const-string v2, "lottieAdDescMaxLength"

    .line 99
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->md(I)V

    const-string v2, "lottieAdTitleMaxLength"

    .line 100
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->p(I)V

    const-string v2, "imageFlipSlideType"

    .line 101
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->p(Ljava/lang/String;)V

    const-string v2, "isClickEventIntercept"

    .line 102
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->my(Z)V

    const-string v2, "filterColor"

    .line 103
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 104
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v4, 0x0

    .line 106
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_3

    .line 107
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 108
    :cond_3
    invoke-virtual {v1, v3}, Lcom/byazt/aq/a;->tt(Ljava/util/List;)V

    :cond_4
    :try_start_0
    const-string v2, "animations"

    .line 109
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 111
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v5, v4, :cond_6

    .line 112
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 113
    new-instance v8, Lcom/byazt/aq/c;

    invoke-direct {v8}, Lcom/byazt/aq/c;-><init>()V

    const-string v9, "animationType"

    .line 114
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/byazt/aq/c;->ve(Ljava/lang/String;)V

    const-string v9, "animationDuration"

    .line 115
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/byazt/aq/c;->c(D)V

    const-string v9, "animationScaleX"

    .line 116
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/byazt/aq/c;->tt(D)V

    const-string v9, "animationScaleY"

    .line 117
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/byazt/aq/c;->ve(D)V

    const-string v9, "animationTimeFunction"

    .line 118
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/byazt/aq/c;->uj(Ljava/lang/String;)V

    const-string v9, "animationDelay"

    .line 119
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/byazt/aq/c;->uj(D)V

    const-string v9, "animationIterationCount"

    .line 120
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/byazt/aq/c;->a(I)V

    const-string v9, "animationDirection"

    .line 121
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/byazt/aq/c;->n(Ljava/lang/String;)V

    const-string v9, "animationInterval"

    .line 122
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/byazt/aq/c;->n(D)V

    const-string v9, "animationBorderWidth"

    .line 123
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/byazt/aq/c;->c(I)V

    const-string v9, "key"

    .line 124
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/byazt/aq/c;->c(J)V

    const-string v9, "animationEffectWidth"

    .line 125
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/byazt/aq/c;->tt(I)V

    const-string v9, "animationSwing"

    const/4 v10, 0x1

    .line 126
    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/byazt/aq/c;->ve(I)V

    const-string v9, "animationTranslateX"

    .line 127
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/byazt/aq/c;->uj(I)V

    const-string v9, "animationTranslateY"

    .line 128
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/byazt/aq/c;->n(I)V

    const-string v9, "animationRippleBackgroundColor"

    .line 129
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/byazt/aq/c;->tt(Ljava/lang/String;)V

    const-string v9, "animationScaleDirection"

    .line 130
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/byazt/aq/c;->c(Ljava/lang/String;)V

    const-string v9, "animationFadeStart"

    .line 131
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/byazt/aq/c;->sp(I)V

    const-string v9, "animationFadeEnd"

    .line 132
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/byazt/aq/c;->x(I)V

    const-string v9, "animationFillMode"

    .line 133
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/byazt/aq/c;->a(Ljava/lang/String;)V

    const-string v9, "animationBounceHeight"

    .line 134
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v8, v4}, Lcom/byazt/aq/c;->i(I)V

    .line 135
    invoke-virtual {v1}, Lcom/byazt/aq/a;->my()D

    move-result-wide v9

    cmpl-double v4, v9, v6

    if-lez v4, :cond_5

    .line 136
    invoke-virtual {v8}, Lcom/byazt/aq/c;->yp()D

    move-result-wide v9

    invoke-virtual {v1}, Lcom/byazt/aq/a;->my()D

    move-result-wide v11

    add-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lcom/byazt/aq/c;->uj(D)V

    .line 137
    :cond_5
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 138
    :cond_6
    invoke-virtual {v1, v3}, Lcom/byazt/aq/a;->c(Ljava/util/List;)V

    .line 139
    :cond_7
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "triggerSlideDirection"

    const-string v3, "0"

    .line 140
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/aq/a;->yv(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    .line 141
    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/byazt/aq/a;->c(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 142
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    return-object v1
.end method

.method private c(Lcom/byazt/aq/a;Lorg/json/JSONObject;)V
    .locals 7

    if-eqz p1, :cond_46

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 151
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 152
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 154
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "letterSpacing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v4, 0x43

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "marginLeft"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v4, 0x42

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "borderSize"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v4, 0x41

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "textFlowType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v4, 0x40

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "heightMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v4, 0x3f

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "clickTigger"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v4, 0x3e

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "borderRadius"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v4, 0x3d

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "interactType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v4, 0x3c

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "interactText"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v4, 0x3b

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "lineFeed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v4, 0x3a

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "interactPosition"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v4, 0x39

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "justifyHorizontal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v4, 0x38

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "marginRight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v4, 0x37

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "isDataFixed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v4, 0x36

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "position"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v4, 0x35

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "borderStyle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v4, 0x34

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "borderColor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v4, 0x33

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "paddingRight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v4, 0x32

    goto/16 :goto_1

    :sswitch_12
    const-string v2, "interactVisibleTime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_1

    :cond_14
    const/16 v4, 0x31

    goto/16 :goto_1

    :sswitch_13
    const-string v2, "justifyVertical"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_1

    :cond_15
    const/16 v4, 0x30

    goto/16 :goto_1

    :sswitch_14
    const-string v2, "fontSize"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_1

    :cond_16
    const/16 v4, 0x2f

    goto/16 :goto_1

    :sswitch_15
    const-string v2, "interactWontHide"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_1

    :cond_17
    const/16 v4, 0x2e

    goto/16 :goto_1

    :sswitch_16
    const-string v2, "allowTextFlow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_1

    :cond_18
    const/16 v4, 0x2d

    goto/16 :goto_1

    :sswitch_17
    const-string v2, "paddingBottom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto/16 :goto_1

    :cond_19
    const/16 v4, 0x2c

    goto/16 :goto_1

    :sswitch_18
    const-string v2, "timingEnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const/16 v4, 0x2b

    goto/16 :goto_1

    :sswitch_19
    const-string v2, "width"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_1

    :cond_1b
    const/16 v4, 0x2a

    goto/16 :goto_1

    :sswitch_1a
    const-string v2, "right"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_1

    :cond_1c
    const/16 v4, 0x29

    goto/16 :goto_1

    :sswitch_1b
    const-string v2, "color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto/16 :goto_1

    :cond_1d
    const/16 v4, 0x28

    goto/16 :goto_1

    :sswitch_1c
    const-string v2, "align"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto/16 :goto_1

    :cond_1e
    const/16 v4, 0x27

    goto/16 :goto_1

    :sswitch_1d
    const-string v2, "paddingTop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_1

    :cond_1f
    const/16 v4, 0x26

    goto/16 :goto_1

    :sswitch_1e
    const-string v2, "loop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto/16 :goto_1

    :cond_20
    const/16 v4, 0x25

    goto/16 :goto_1

    :sswitch_1f
    const-string v2, "left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto/16 :goto_1

    :cond_21
    const/16 v4, 0x24

    goto/16 :goto_1

    :sswitch_20
    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto/16 :goto_1

    :cond_22
    const/16 v4, 0x23

    goto/16 :goto_1

    :sswitch_21
    const-string v2, "top"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto/16 :goto_1

    :cond_23
    const/16 v4, 0x22

    goto/16 :goto_1

    :sswitch_22
    const-string v2, "widthMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto/16 :goto_1

    :cond_24
    const/16 v4, 0x21

    goto/16 :goto_1

    :sswitch_23
    const-string v2, "useLeft"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    goto/16 :goto_1

    :cond_25
    const/16 v4, 0x20

    goto/16 :goto_1

    :sswitch_24
    const-string v2, "isClickEventIntercept"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto/16 :goto_1

    :cond_26
    const/16 v4, 0x1f

    goto/16 :goto_1

    :sswitch_25
    const-string v2, "bgColor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto/16 :goto_1

    :cond_27
    const/16 v4, 0x1e

    goto/16 :goto_1

    :sswitch_26
    const-string v2, "marginBottom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto/16 :goto_1

    :cond_28
    const/16 v4, 0x1d

    goto/16 :goto_1

    :sswitch_27
    const-string v2, "useRight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    goto/16 :goto_1

    :cond_29
    const/16 v4, 0x1c

    goto/16 :goto_1

    :sswitch_28
    const-string v2, "textFlowDuration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto/16 :goto_1

    :cond_2a
    const/16 v4, 0x1b

    goto/16 :goto_1

    :sswitch_29
    const-string v2, "lineHeight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    goto/16 :goto_1

    :cond_2b
    const/16 v4, 0x1a

    goto/16 :goto_1

    :sswitch_2a
    const-string v2, "timingStart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto/16 :goto_1

    :cond_2c
    const/16 v4, 0x19

    goto/16 :goto_1

    :sswitch_2b
    const-string v2, "zIndex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    goto/16 :goto_1

    :cond_2d
    const/16 v4, 0x18

    goto/16 :goto_1

    :sswitch_2c
    const-string v2, "fontWeight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    goto/16 :goto_1

    :cond_2e
    const/16 v4, 0x17

    goto/16 :goto_1

    :sswitch_2d
    const-string v2, "useTop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto/16 :goto_1

    :cond_2f
    const/16 v4, 0x16

    goto/16 :goto_1

    :sswitch_2e
    const-string v2, "interactHiddenTime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto/16 :goto_1

    :cond_30
    const/16 v4, 0x15

    goto/16 :goto_1

    :sswitch_2f
    const-string v2, "tagMaxCount"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto/16 :goto_1

    :cond_31
    const/16 v4, 0x14

    goto/16 :goto_1

    :sswitch_30
    const-string v2, "direction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    goto/16 :goto_1

    :cond_32
    const/16 v4, 0x13

    goto/16 :goto_1

    :sswitch_31
    const-string v2, "triggerSlideMinDistance"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    goto/16 :goto_1

    :cond_33
    const/16 v4, 0x12

    goto/16 :goto_1

    :sswitch_32
    const-string v2, "useBottom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    goto/16 :goto_1

    :cond_34
    const/16 v4, 0x11

    goto/16 :goto_1

    :sswitch_33
    const-string v2, "marginTop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    goto/16 :goto_1

    :cond_35
    const/16 v4, 0x10

    goto/16 :goto_1

    :sswitch_34
    const-string v2, "interactValidate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    goto/16 :goto_1

    :cond_36
    const/16 v4, 0xf

    goto/16 :goto_1

    :sswitch_35
    const-string v2, "alignItems"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    goto/16 :goto_1

    :cond_37
    const/16 v4, 0xe

    goto/16 :goto_1

    :sswitch_36
    const-string v2, "textAlign"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    goto/16 :goto_1

    :cond_38
    const/16 v4, 0xd

    goto/16 :goto_1

    :sswitch_37
    const-string v2, "height"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    goto/16 :goto_1

    :cond_39
    const/16 v4, 0xc

    goto/16 :goto_1

    :sswitch_38
    const-string v2, "fontFamily"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    goto/16 :goto_1

    :cond_3a
    const/16 v4, 0xb

    goto/16 :goto_1

    :sswitch_39
    const-string v2, "bottom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    goto/16 :goto_1

    :cond_3b
    const/16 v4, 0xa

    goto/16 :goto_1

    :sswitch_3a
    const-string v2, "adType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    goto/16 :goto_1

    :cond_3c
    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_3b
    const-string v2, "paddingLeft"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    goto/16 :goto_1

    :cond_3d
    const/16 v4, 0x8

    goto/16 :goto_1

    :sswitch_3c
    const-string v2, "interactBgColor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    goto :goto_1

    :cond_3e
    const/4 v4, 0x7

    goto :goto_1

    :sswitch_3d
    const-string v2, "lineLimit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    goto :goto_1

    :cond_3f
    const/4 v4, 0x6

    goto :goto_1

    :sswitch_3e
    const-string v2, "openPlayableLandingPage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    goto :goto_1

    :cond_40
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_3f
    const-string v2, "lineCount"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    goto :goto_1

    :cond_41
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_40
    const-string v2, "bgImgUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    goto :goto_1

    :cond_42
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_41
    const-string v2, "triggerSlideDirection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    goto :goto_1

    :cond_43
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_42
    const-string v2, "clickArea"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    goto :goto_1

    :cond_44
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_43
    const-string v2, "isShowBgControl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    goto :goto_1

    :cond_45
    const/4 v4, 0x0

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 155
    :pswitch_0
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->yp(I)V

    goto/16 :goto_0

    .line 156
    :pswitch_1
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->t(I)V

    goto/16 :goto_0

    .line 157
    :pswitch_2
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->tt(F)V

    goto/16 :goto_0

    .line 158
    :pswitch_3
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->rh(I)V

    goto/16 :goto_0

    .line 159
    :pswitch_4
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->da(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    :pswitch_5
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->m(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :pswitch_6
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->c(F)V

    goto/16 :goto_0

    .line 162
    :pswitch_7
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->yp(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    :pswitch_8
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->t(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    :pswitch_9
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->uj(Z)V

    goto/16 :goto_0

    .line 165
    :pswitch_a
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "translateY"

    .line 166
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/byazt/aq/a;->sp(I)V

    const-string v2, "translateX"

    .line 167
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/byazt/aq/a;->x(I)V

    const-string v2, "scaleX"

    const-wide/16 v3, 0x0

    .line 168
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lcom/byazt/aq/a;->uj(D)V

    const-string v2, "scaleY"

    .line 169
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/byazt/aq/a;->n(D)V

    goto/16 :goto_0

    .line 170
    :pswitch_b
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->nu(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    :pswitch_c
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->u(I)V

    goto/16 :goto_0

    .line 172
    :pswitch_d
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->n(Z)V

    goto/16 :goto_0

    .line 173
    :pswitch_e
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->m(I)V

    goto/16 :goto_0

    .line 174
    :pswitch_f
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 175
    :pswitch_10
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->x(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    :pswitch_11
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->sp(F)V

    goto/16 :goto_0

    .line 177
    :pswitch_12
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->h(I)V

    goto/16 :goto_0

    .line 178
    :pswitch_13
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->rh(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 179
    :pswitch_14
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->i(F)V

    goto/16 :goto_0

    .line 180
    :pswitch_15
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->yp(Z)V

    goto/16 :goto_0

    .line 181
    :pswitch_16
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->sl(Z)V

    goto/16 :goto_0

    .line 182
    :pswitch_17
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->n(F)V

    goto/16 :goto_0

    .line 183
    :pswitch_18
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/byazt/aq/a;->ve(D)V

    goto/16 :goto_0

    .line 184
    :pswitch_19
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->uj(F)V

    goto/16 :goto_0

    .line 185
    :pswitch_1a
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->rl(I)V

    goto/16 :goto_0

    .line 186
    :pswitch_1b
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 187
    :pswitch_1c
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->my(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :pswitch_1d
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->x(F)V

    goto/16 :goto_0

    .line 189
    :pswitch_1e
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->c(Z)V

    goto/16 :goto_0

    .line 190
    :pswitch_1f
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->gt(I)V

    goto/16 :goto_0

    .line 191
    :pswitch_20
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->gt(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    :pswitch_21
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->qy(I)V

    goto/16 :goto_0

    .line 193
    :pswitch_22
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->sl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    :pswitch_23
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->sp(Z)V

    goto/16 :goto_0

    .line 195
    :pswitch_24
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->yp(Z)V

    goto/16 :goto_0

    .line 196
    :pswitch_25
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :pswitch_26
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->sl(I)V

    goto/16 :goto_0

    .line 198
    :pswitch_27
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->x(Z)V

    goto/16 :goto_0

    .line 199
    :pswitch_28
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->my(I)V

    goto/16 :goto_0

    .line 200
    :pswitch_29
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/byazt/aq/a;->a(D)V

    goto/16 :goto_0

    .line 201
    :pswitch_2a
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/byazt/aq/a;->tt(D)V

    goto/16 :goto_0

    .line 202
    :pswitch_2b
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->gr(I)V

    goto/16 :goto_0

    .line 203
    :pswitch_2c
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->z(I)V

    goto/16 :goto_0

    .line 204
    :pswitch_2d
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->i(Z)V

    goto/16 :goto_0

    .line 205
    :pswitch_2e
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->zm(I)V

    goto/16 :goto_0

    .line 206
    :pswitch_2f
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->nu(I)V

    goto/16 :goto_0

    .line 207
    :pswitch_30
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->qy(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    :pswitch_31
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/byazt/aq/a;->c(J)V

    goto/16 :goto_0

    .line 209
    :pswitch_32
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->da(Z)V

    goto/16 :goto_0

    .line 210
    :pswitch_33
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->da(I)V

    goto/16 :goto_0

    .line 211
    :pswitch_34
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->tt(Z)V

    goto/16 :goto_0

    .line 212
    :pswitch_35
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->rl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 213
    :pswitch_36
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->uj(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    :pswitch_37
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->ve(F)V

    goto/16 :goto_0

    .line 215
    :pswitch_38
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->ve(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    :pswitch_39
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->gu(I)V

    goto/16 :goto_0

    .line 217
    :pswitch_3a
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->tt(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :pswitch_3b
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->a(F)V

    goto/16 :goto_0

    .line 219
    :pswitch_3c
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->u(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    :pswitch_3d
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->a(Z)V

    goto/16 :goto_0

    .line 221
    :pswitch_3e
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->rh(Z)V

    goto/16 :goto_0

    .line 222
    :pswitch_3f
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->i(I)V

    goto/16 :goto_0

    .line 223
    :pswitch_40
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->sp(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    :pswitch_41
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->yv(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 225
    :pswitch_42
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->z(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 226
    :pswitch_43
    invoke-virtual {p2, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/aq/a;->ve(Z)V

    goto/16 :goto_0

    :cond_46
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b3ece2f -> :sswitch_43
        -0x7528f9cb -> :sswitch_42
        -0x72037f5a -> :sswitch_41
        -0x706914af -> :sswitch_40
        -0x6c9a7685 -> :sswitch_3f
        -0x6c8ebcd2 -> :sswitch_3e
        -0x6c1e7bd9 -> :sswitch_3d
        -0x5e1230f8 -> :sswitch_3c
        -0x597a2048 -> :sswitch_3b
        -0x54d0ba03 -> :sswitch_3a
        -0x527265d5 -> :sswitch_39
        -0x48ff636d -> :sswitch_38
        -0x48c76ed9 -> :sswitch_37
        -0x3f826a28 -> :sswitch_36
        -0x3f600445 -> :sswitch_35
        -0x3e638294 -> :sswitch_34
        -0x3e464339 -> :sswitch_33
        -0x3cca356e -> :sswitch_32
        -0x3bea1032 -> :sswitch_31
        -0x395ff881 -> :sswitch_30
        -0x36619c3b -> :sswitch_2f
        -0x3298d993 -> :sswitch_2e
        -0x31d53db2 -> :sswitch_2d
        -0x2bc67c59 -> :sswitch_2c
        -0x2b988b88 -> :sswitch_2b
        -0x2a487dc8 -> :sswitch_2a
        -0x1ebe99c5 -> :sswitch_29
        -0x132c1d51 -> :sswitch_28
        -0x119b972b -> :sswitch_27
        -0x113c6e87 -> :sswitch_26
        -0xc35e9e2 -> :sswitch_25
        -0xb6dda9a -> :sswitch_24
        -0x8d641d2 -> :sswitch_23
        -0x3157777 -> :sswitch_22
        0x1c155 -> :sswitch_21
        0x2eefaa -> :sswitch_20
        0x32a007 -> :sswitch_1f
        0x32c6a4 -> :sswitch_1e
        0x55f4784 -> :sswitch_1d
        0x5899705 -> :sswitch_1c
        0x5a72f63 -> :sswitch_1b
        0x677c21c -> :sswitch_1a
        0x6be2dc6 -> :sswitch_19
        0x9cfc431 -> :sswitch_18
        0xc0fb19c -> :sswitch_17
        0xebc0a64 -> :sswitch_16
        0x120cfd56 -> :sswitch_15
        0x15caa0f0 -> :sswitch_14
        0x1991a626 -> :sswitch_13
        0x1a316249 -> :sswitch_12
        0x2a8c788b -> :sswitch_11
        0x2b158697 -> :sswitch_10
        0x2bf974e5 -> :sswitch_f
        0x2c929929 -> :sswitch_e
        0x2f2f83e0 -> :sswitch_d
        0x3a1ea90e -> :sswitch_c
        0x4235ded4 -> :sswitch_b
        0x42e5fd7f -> :sswitch_a
        0x46d2efb2 -> :sswitch_9
        0x4f654483 -> :sswitch_8
        0x4f658e90 -> :sswitch_7
        0x506afbde -> :sswitch_6
        0x511c992a -> :sswitch_5
        0x58d2536a -> :sswitch_4
        0x68fae9d5 -> :sswitch_3
        0x6cc5d24d -> :sswitch_2
        0x757a12d5 -> :sswitch_1
        0x7dd4813d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private md(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/aq/a;->cl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->cf:Lorg/json/JSONObject;

    return-object v0
.end method

.method public a(D)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/byazt/aq/a;->ic:D

    return-void
.end method

.method public a(F)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/aq/a;->sp:F

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/a;->ij:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/aq/a;->nu:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/byazt/aq/a;->l:Z

    return-void
.end method

.method public aw()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->cu:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public az()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->xd:I

    .line 2
    .line 3
    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->lo:I

    .line 2
    .line 3
    return v0
.end method

.method public bm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->pf:I

    .line 2
    .line 3
    return v0
.end method

.method public bx()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->zb:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(D)V
    .locals 0

    .line 146
    iput-wide p1, p0, Lcom/byazt/aq/a;->pn:D

    return-void
.end method

.method public c(F)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/byazt/aq/a;->c:F

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/byazt/aq/a;->az:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 150
    iput-wide p1, p0, Lcom/byazt/aq/a;->ca:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/byazt/aq/a;->nx:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/aq/c;",
            ">;)V"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/byazt/aq/a;->ir:Ljava/util/List;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/byazt/aq/a;->dz:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/byazt/aq/a;->dz:Z

    return v0
.end method

.method public ca()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "flip"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/aq/a;->gk:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/aq/a;->gk:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "slide"

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object v1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/aq/a;->gk:Ljava/lang/String;

    .line 24
    .line 25
    return-object v0
.end method

.method public cf()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public cl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public cu()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/aq/a;->md:D

    return-wide v0
.end method

.method public cu(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/a;->hq:I

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->gr:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/a;->ej:I

    return-void
.end method

.method public da()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->nx:Ljava/lang/String;

    return-object v0
.end method

.method public da(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/aq/a;->pf:I

    return-void
.end method

.method public da(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/aq/a;->rl:Ljava/lang/String;

    return-void
.end method

.method public da(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/aq/a;->kp:Z

    return-void
.end method

.method public di()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/aq/a;->mm:Z

    .line 2
    .line 3
    return v0
.end method

.method public dz()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->oz:I

    .line 2
    .line 3
    return v0
.end method

.method public ej()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->gy:I

    .line 2
    .line 3
    return v0
.end method

.method public eo(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/a;->g:I

    return-void
.end method

.method public eo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/aq/a;->zm:Z

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->y:I

    .line 2
    .line 3
    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public gk()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/aq/a;->pe:Z

    .line 2
    .line 3
    return v0
.end method

.method public gr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->rh:Ljava/lang/String;

    return-object v0
.end method

.method public gr(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/a;->ma:I

    return-void
.end method

.method public gr(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/aq/a;->nl:Ljava/lang/String;

    return-void
.end method

.method public gt()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/aq/a;->t:D

    return-wide v0
.end method

.method public gt(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/aq/a;->oz:I

    return-void
.end method

.method public gt(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/aq/a;->b:Ljava/lang/String;

    return-void
.end method

.method public gu()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->nu:Ljava/lang/String;

    return-object v0
.end method

.method public gu(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/a;->y:I

    return-void
.end method

.method public gu(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/aq/a;->di:Ljava/lang/String;

    return-void
.end method

.method public gx()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->sd:I

    .line 2
    .line 3
    return v0
.end method

.method public gy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->gu:Ljava/lang/String;

    return-object v0
.end method

.method public h(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/a;->f:I

    return-void
.end method

.method public hd()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->nb:I

    .line 2
    .line 3
    return v0
.end method

.method public hg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->iy:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->ma:I

    .line 2
    .line 3
    return v0
.end method

.method public hq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->di:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->ij:I

    return v0
.end method

.method public i(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/a;->da:F

    return-void
.end method

.method public i(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/byazt/aq/a;->nb:I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/aq/a;->gt:Ljava/lang/String;

    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/aq/a;->tk:Z

    return-void
.end method

.method public ic()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/aq/a;->qp:Z

    .line 2
    .line 3
    return v0
.end method

.method public ij()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->hj:I

    .line 2
    .line 3
    return v0
.end method

.method public ir()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->iu:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public is()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/aq/a;->ny:Z

    .line 2
    .line 3
    return v0
.end method

.method public iu()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public iy()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->nc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->os:I

    .line 2
    .line 3
    return v0
.end method

.method public jg()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->vp:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public jt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->hq:I

    .line 2
    .line 3
    return v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->vp:Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {p0, p0, v0}, Lcom/byazt/aq/a;->c(Lcom/byazt/aq/a;Lorg/json/JSONObject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public kk()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/aq/a;->lt:Z

    .line 2
    .line 3
    return v0
.end method

.method public kp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/aq/a;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public kz()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->ej:I

    .line 2
    .line 3
    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->sv:I

    .line 2
    .line 3
    return v0
.end method

.method public lo()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->aw:I

    .line 2
    .line 3
    return v0
.end method

.method public lr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->bx:I

    .line 2
    .line 3
    return v0
.end method

.method public lt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->hd:I

    .line 2
    .line 3
    return v0
.end method

.method public m()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->x:F

    return v0
.end method

.method public m(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/aq/a;->lo:I

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/aq/a;->zb:Ljava/lang/String;

    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/aq/a;->nt:Z

    return-void
.end method

.method public ma()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->r:I

    .line 2
    .line 3
    return v0
.end method

.method public md()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/aq/a;->qy:Ljava/lang/String;

    return-object v0
.end method

.method public md(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/aq/a;->k:I

    return-void
.end method

.method public mm()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/aq/a;->pl:Z

    .line 2
    .line 3
    return v0
.end method

.method public mq()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->ir:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/byazt/aq/c;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/byazt/aq/c;->i()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "translate"

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/byazt/aq/c;->sp()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-gez v2, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/byazt/aq/c;->sp()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    neg-int v0, v0

    .line 44
    return v0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    return v0
.end method

.method public my()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/aq/a;->sl:D

    return-wide v0
.end method

.method public my(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/aq/a;->os:I

    return-void
.end method

.method public my(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/aq/a;->pu:Ljava/lang/String;

    return-void
.end method

.method public my(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/aq/a;->pe:Z

    return-void
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->w:I

    return v0
.end method

.method public n(D)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/byazt/aq/a;->h:D

    return-void
.end method

.method public n(F)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/aq/a;->a:F

    return-void
.end method

.method public n(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/a;->kz:I

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/aq/a;->m:Ljava/lang/String;

    return-void
.end method

.method public n(Lorg/json/JSONObject;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/aq/a;->cf:Lorg/json/JSONObject;

    return-void
.end method

.method public n(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/byazt/aq/a;->bm:Z

    return-void
.end method

.method public nb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public nc()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/aq/a;->ca:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public nl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/aq/a;->gx:Z

    .line 2
    .line 3
    return v0
.end method

.method public nt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->hg:I

    .line 2
    .line 3
    return v0
.end method

.method public nu()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->i:F

    return v0
.end method

.method public nu(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/aq/a;->kk:I

    return-void
.end method

.method public nu(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/aq/a;->or:Ljava/lang/String;

    return-void
.end method

.method public nu(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/aq/a;->gx:Z

    return-void
.end method

.method public ny()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/aq/a;->jg:Z

    .line 2
    .line 3
    return v0
.end method

.method public or()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->p:I

    return v0
.end method

.method public or(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/a;->xd:I

    return-void
.end method

.method public os()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/aq/a;->kp:Z

    .line 2
    .line 3
    return v0
.end method

.method public oz()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->rl:Ljava/lang/String;

    return-object v0
.end method

.method public p(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/a;->sd:I

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/aq/a;->gk:Ljava/lang/String;

    return-void
.end method

.method public pf()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->eo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public pl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->vi:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public pn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public pu()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/aq/a;->ic:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->pu:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public qp()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/aq/a;->h:D

    return-wide v0
.end method

.method public qp(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/a;->gy:I

    return-void
.end method

.method public qy()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public qy(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/a;->s:I

    return-void
.end method

.method public qy(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/aq/a;->j:Ljava/lang/String;

    return-void
.end method

.method public r()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->q:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public rh()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->da:F

    return v0
.end method

.method public rh(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/aq/a;->v:I

    return-void
.end method

.method public rh(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/aq/a;->cu:Ljava/lang/String;

    return-void
.end method

.method public rh(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/aq/a;->mm:Z

    return-void
.end method

.method public rl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->z:Ljava/lang/String;

    return-object v0
.end method

.method public rl(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/a;->r:I

    return-void
.end method

.method public rl(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/aq/a;->iu:Ljava/lang/String;

    return-void
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->kk:I

    .line 2
    .line 3
    return v0
.end method

.method public sd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->yo:Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {p0, p0, v0}, Lcom/byazt/aq/a;->c(Lcom/byazt/aq/a;Lorg/json/JSONObject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public sl()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->c:F

    return v0
.end method

.method public sl(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/aq/a;->bx:I

    return-void
.end method

.method public sl(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/aq/a;->qy:Ljava/lang/String;

    return-void
.end method

.method public sl(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/aq/a;->tx:Z

    return-void
.end method

.method public sp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->kz:I

    return v0
.end method

.method public sp(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/a;->x:F

    return-void
.end method

.method public sp(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/byazt/aq/a;->yv:I

    return-void
.end method

.method public sp(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/aq/a;->rh:Ljava/lang/String;

    return-void
.end method

.method public sp(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/aq/a;->lt:Z

    return-void
.end method

.method public sv()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->or:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->tt:F

    return v0
.end method

.method public t(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/aq/a;->sv:I

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/aq/a;->gu:Ljava/lang/String;

    return-void
.end method

.method public t(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/aq/a;->jg:Z

    return-void
.end method

.method public tk()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->lr:I

    .line 2
    .line 3
    return v0
.end method

.method public to()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/aq/a;->bm:Z

    .line 2
    .line 3
    return v0
.end method

.method public tt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->az:I

    return v0
.end method

.method public tt(D)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/byazt/aq/a;->sl:D

    return-void
.end method

.method public tt(F)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/aq/a;->tt:F

    return-void
.end method

.method public tt(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/a;->is:I

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/aq/a;->u:Ljava/lang/String;

    return-void
.end method

.method public tt(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lcom/byazt/aq/a;->e:Ljava/util/List;

    return-void
.end method

.method public tt(Lorg/json/JSONObject;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/aq/a;->q:Lorg/json/JSONObject;

    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/aq/a;->n:Z

    return-void
.end method

.method public tx()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/aq/a;->to:Z

    .line 2
    .line 3
    return v0
.end method

.method public u(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/aq/a;->aw:I

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/aq/a;->gr:Ljava/lang/String;

    return-void
.end method

.method public u(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/aq/a;->pl:Z

    return-void
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/aq/a;->n:Z

    return v0
.end method

.method public uj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->jt:I

    return v0
.end method

.method public uj(D)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/byazt/aq/a;->md:D

    return-void
.end method

.method public uj(F)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/aq/a;->uj:F

    return-void
.end method

.method public uj(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/a;->w:I

    return-void
.end method

.method public uj(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/aq/a;->z:Ljava/lang/String;

    return-void
.end method

.method public uj(Lorg/json/JSONObject;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/aq/a;->vp:Lorg/json/JSONObject;

    return-void
.end method

.method public uj(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/byazt/aq/a;->qp:Z

    return-void
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/aq/a;->tk:Z

    .line 2
    .line 3
    return v0
.end method

.method public ve()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->is:I

    return v0
.end method

.method public ve(D)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/byazt/aq/a;->t:D

    return-void
.end method

.method public ve(F)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/aq/a;->ve:F

    return-void
.end method

.method public ve(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/a;->jt:I

    return-void
.end method

.method public ve(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/aq/a;->yp:Ljava/lang/String;

    return-void
.end method

.method public ve(Lorg/json/JSONObject;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/aq/a;->yo:Lorg/json/JSONObject;

    return-void
.end method

.method public ve(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/byazt/aq/a;->zm:Z

    return-void
.end method

.method public vi()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/aq/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->ir:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public vp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->nl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/aq/a;->nt:Z

    .line 2
    .line 3
    return v0
.end method

.method public x()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/aq/a;->pn:D

    return-wide v0
.end method

.method public x(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/a;->i:F

    return-void
.end method

.method public x(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/byazt/aq/a;->p:I

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/aq/a;->my:Ljava/lang/String;

    return-void
.end method

.method public x(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/aq/a;->to:Z

    return-void
.end method

.method public xd()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->yf:I

    .line 2
    .line 3
    return v0
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/aq/a;->tx:Z

    .line 2
    .line 3
    return v0
.end method

.method public yf()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->s:I

    .line 2
    .line 3
    return v0
.end method

.method public yo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/aq/a;->mq:Z

    .line 2
    .line 3
    return v0
.end method

.method public yp()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->a:F

    return v0
.end method

.method public yp(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/aq/a;->hd:I

    return-void
.end method

.method public yp(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/aq/a;->d:Ljava/lang/String;

    return-void
.end method

.method public yp(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/aq/a;->mq:Z

    return-void
.end method

.method public yv()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->my:Ljava/lang/String;

    return-object v0
.end method

.method public yv(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/a;->hg:I

    return-void
.end method

.method public yv(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/aq/a;->nc:Ljava/lang/String;

    return-void
.end method

.method public z()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->sp:F

    return v0
.end method

.method public z(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/aq/a;->lr:I

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/aq/a;->eo:Ljava/lang/String;

    return-void
.end method

.method public z(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/aq/a;->ny:Z

    return-void
.end method

.method public zb()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/a;->yv:I

    return v0
.end method

.method public zb(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/a;->hj:I

    return-void
.end method

.method public zm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/a;->cl:Ljava/lang/String;

    return-object v0
.end method

.method public zm(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/a;->yf:I

    return-void
.end method

.method public zm(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/aq/a;->iy:Ljava/lang/String;

    return-void
.end method
