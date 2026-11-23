.class public Lcom/join/mgps/event/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:D

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;DJLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "contentStr",
            "starNum",
            "time",
            "mobileType"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/join/mgps/event/n;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/event/n;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/join/mgps/event/n;->c:D

    .line 9
    .line 10
    iput-wide p5, p0, Lcom/join/mgps/event/n;->d:J

    .line 11
    .line 12
    iput-object p7, p0, Lcom/join/mgps/event/n;->e:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/event/n;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/event/n;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/event/n;->c:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/event/n;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentStr"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/event/n;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mobileType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/event/n;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public g(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "starNum"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/event/n;->c:D

    .line 2
    .line 3
    return-void
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/event/n;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public h(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/event/n;->d:J

    .line 2
    .line 3
    return-void
.end method

.method public i(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/event/n;->a:I

    .line 2
    .line 3
    return-void
.end method
