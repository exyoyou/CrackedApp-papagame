.class public Lcom/join/mgps/event/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/join/mgps/dto/CloudListDataBean;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/event/i;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/CloudListDataBean;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cloudListDataBean",
            "status"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/event/i;->a:Lcom/join/mgps/dto/CloudListDataBean;

    .line 5
    iput p2, p0, Lcom/join/mgps/event/i;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/CloudListDataBean;ILjava/lang/String;ILjava/lang/String;)V
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
            "cloudListDataBean",
            "status",
            "hasDownSize",
            "progress",
            "downSpeed"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/join/mgps/event/i;->a:Lcom/join/mgps/dto/CloudListDataBean;

    .line 8
    iput p2, p0, Lcom/join/mgps/event/i;->b:I

    .line 9
    iput-object p3, p0, Lcom/join/mgps/event/i;->c:Ljava/lang/String;

    .line 10
    iput p4, p0, Lcom/join/mgps/event/i;->d:I

    .line 11
    iput-object p5, p0, Lcom/join/mgps/event/i;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/join/mgps/dto/CloudListDataBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/event/i;->a:Lcom/join/mgps/dto/CloudListDataBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/event/i;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/event/i;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/event/i;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/event/i;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public f(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cloudListDataBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/event/i;->a:Lcom/join/mgps/dto/CloudListDataBean;

    .line 2
    .line 3
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downSpeed"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/event/i;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasDownSize"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/event/i;->c:Ljava/lang/String;

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
            "progress"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/event/i;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public j(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/event/i;->b:I

    .line 2
    .line 3
    return-void
.end method
