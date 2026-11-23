.class Lcom/join/mgps/activity/GameMainNewActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainNewActivity;->P(Lcom/join/mgps/dto/GameMainV3DataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GameMainV3DataBean;

.field final synthetic c:Lcom/join/mgps/activity/GameMainNewActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainNewActivity;Lcom/join/mgps/dto/GameMainV3DataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$gameMaindataImg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$c;->c:Lcom/join/mgps/activity/GameMainNewActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/GameMainNewActivity$c;->b:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity$c;->c:Lcom/join/mgps/activity/GameMainNewActivity;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$c;->b:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean;->getSurface_bottom_ad()Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;->getTpl_type()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$c;->b:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean;->getSurface_bottom_ad()Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;->getLink_type()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$c;->b:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean;->getSurface_bottom_ad()Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;->getJump_type()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$c;->b:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean;->getSurface_bottom_ad()Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;->getCrc_link_type_val()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$c;->b:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean;->getSurface_bottom_ad()Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;->getLink_type_val()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/activity/GameMainNewActivity;->H(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
