.class Lcom/join/mgps/activity/QuarkLoadingActivity$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/QuarkLoadingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private b:Z

.field c:Ljava/util/Random;

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field final synthetic i:Lcom/join/mgps/activity/QuarkLoadingActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/QuarkLoadingActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->i:Lcom/join/mgps/activity/QuarkLoadingActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->b:Z

    .line 8
    .line 9
    new-instance p1, Ljava/util/Random;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->c:Ljava/util/Random;

    .line 15
    .line 16
    const/16 v0, 0xa

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    add-int/lit8 p1, p1, 0x46

    .line 23
    .line 24
    iput p1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->d:I

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->c:Ljava/util/Random;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    add-int/lit8 p1, p1, 0x50

    .line 33
    .line 34
    iput p1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->e:I

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->f:I

    .line 38
    .line 39
    iput p1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->g:I

    .line 40
    .line 41
    iput p1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->h:I

    .line 42
    .line 43
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
    iput-boolean p1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->b:Z

    .line 5
    .line 6
    const/16 v1, 0x64

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->g:I

    .line 11
    .line 12
    if-ge v0, v1, :cond_2

    .line 13
    .line 14
    iget v1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->f:I

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    if-ge v1, v2, :cond_0

    .line 18
    .line 19
    iget v1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->d:I

    .line 20
    .line 21
    div-int/2addr v1, v2

    .line 22
    iput v1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->h:I

    .line 23
    .line 24
    add-int/2addr v0, v1

    .line 25
    iput v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->g:I

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    if-lt v1, v2, :cond_1

    .line 29
    .line 30
    const/16 v2, 0xf

    .line 31
    .line 32
    if-ge v1, v2, :cond_1

    .line 33
    .line 34
    iget v1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->e:I

    .line 35
    .line 36
    iget v2, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->d:I

    .line 37
    .line 38
    sub-int/2addr v1, v2

    .line 39
    div-int/lit8 v1, v1, 0xc

    .line 40
    .line 41
    iput v1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->h:I

    .line 42
    .line 43
    add-int/2addr v0, v1

    .line 44
    iput v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->g:I

    .line 45
    .line 46
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->i:Lcom/join/mgps/activity/QuarkLoadingActivity;

    .line 47
    .line 48
    iget v1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->g:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/QuarkLoadingActivity;->updateLaunchProgress(I)V

    .line 51
    .line 52
    .line 53
    const-wide/16 v0, 0x3e8

    .line 54
    .line 55
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 56
    .line 57
    .line 58
    iget v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->f:I

    .line 59
    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 61
    .line 62
    iput v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->f:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->i:Lcom/join/mgps/activity/QuarkLoadingActivity;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/QuarkLoadingActivity;->updateLaunchProgress(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :goto_2
    return-void
.end method
