.class Lcom/join/mgps/activity/MiniGameLoadingActivity$f;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/MiniGameLoadingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field private b:Z

.field final synthetic c:Lcom/join/mgps/activity/MiniGameLoadingActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/MiniGameLoadingActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$f;->c:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$f;->b:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$f;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Ljava/util/Random;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 7
    .line 8
    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    add-int/lit8 v2, v2, 0x46

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, 0x50

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    :goto_0
    iget-boolean v5, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$f;->b:Z

    .line 27
    .line 28
    const/16 v6, 0x64

    .line 29
    .line 30
    if-eqz v5, :cond_2

    .line 31
    .line 32
    if-ge v3, v6, :cond_2

    .line 33
    .line 34
    const/4 v5, 0x3

    .line 35
    if-ge v4, v5, :cond_0

    .line 36
    .line 37
    int-to-float v5, v2

    .line 38
    const/high16 v6, 0x40400000    # 3.0f

    .line 39
    .line 40
    :goto_1
    div-float/2addr v5, v6

    .line 41
    int-to-float v3, v3

    .line 42
    add-float/2addr v3, v5

    .line 43
    float-to-int v3, v3

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    if-lt v4, v5, :cond_1

    .line 46
    .line 47
    const/16 v5, 0xf

    .line 48
    .line 49
    if-ge v4, v5, :cond_1

    .line 50
    .line 51
    sub-int v5, v0, v2

    .line 52
    .line 53
    int-to-float v5, v5

    .line 54
    const/high16 v6, 0x41400000    # 12.0f

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iput-boolean v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$f;->b:Z

    .line 58
    .line 59
    :goto_2
    iget-object v5, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$f;->c:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 60
    .line 61
    invoke-virtual {v5, v3}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->updateLaunchProgress(I)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v4, v4, 0x1

    .line 65
    .line 66
    const-wide/16 v5, 0x3e8

    .line 67
    .line 68
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$f;->c:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 73
    .line 74
    invoke-virtual {v0, v6}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->updateLaunchProgress(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    :goto_3
    return-void
.end method
