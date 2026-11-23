.class Lcom/join/mgps/activity/posting/PostingActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/posting/PostingActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/posting/PostingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/posting/PostingActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$g;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$g;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/posting/PostingActivity;->access$000(Lcom/join/mgps/activity/posting/PostingActivity;)Lcom/join/mgps/dialog/y1;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$g;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/activity/posting/PostingActivity;->access$000(Lcom/join/mgps/activity/posting/PostingActivity;)Lcom/join/mgps/dialog/y1;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dialog/y1;->d()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$g;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 19
    .line 20
    new-instance v0, Lcom/join/mgps/dialog/y1;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/join/mgps/activity/posting/PostingActivity;->access$100(Lcom/join/mgps/activity/posting/PostingActivity;)Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/y1;-><init>(Landroid/app/Activity;Lcom/join/mgps/activity/posting/PostingActivity$m;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/join/mgps/activity/posting/PostingActivity;->access$002(Lcom/join/mgps/activity/posting/PostingActivity;Lcom/join/mgps/dialog/y1;)Lcom/join/mgps/dialog/y1;

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$g;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/join/mgps/activity/posting/PostingActivity;->access$000(Lcom/join/mgps/activity/posting/PostingActivity;)Lcom/join/mgps/dialog/y1;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, ""

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity$g;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/join/mgps/activity/posting/PostingActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getPapaMoney()J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity$g;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 68
    .line 69
    invoke-static {v1}, Lcom/join/mgps/activity/posting/PostingActivity;->access$200(Lcom/join/mgps/activity/posting/PostingActivity;)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dialog/y1;->g(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$g;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/join/mgps/activity/posting/PostingActivity;->access$000(Lcom/join/mgps/activity/posting/PostingActivity;)Lcom/join/mgps/dialog/y1;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/join/mgps/dialog/y1;->h()V

    .line 83
    .line 84
    .line 85
    return-void
.end method
