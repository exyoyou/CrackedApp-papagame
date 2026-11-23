.class public Lcom/join/mgps/dto/OpGameTimeCountDown;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ahead:J

.field public countDown:Ljava/lang/String;

.field public formatter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getAhead()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/OpGameTimeCountDown;->ahead:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getCountDown()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OpGameTimeCountDown;->countDown:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFormatter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OpGameTimeCountDown;->formatter:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAhead(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ahead"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/OpGameTimeCountDown;->ahead:J

    .line 2
    .line 3
    return-void
.end method

.method public setCountDown(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "countDown"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OpGameTimeCountDown;->countDown:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFormatter(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "formatter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OpGameTimeCountDown;->formatter:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
