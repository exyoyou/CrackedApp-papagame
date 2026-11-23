.class public Lcom/join/mgps/event/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/join/mgps/enums/ApiName;


# direct methods
.method public constructor <init>(Lcom/join/mgps/enums/ApiName;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apiName"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/event/f;->a:Lcom/join/mgps/enums/ApiName;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lcom/join/mgps/enums/ApiName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/event/f;->a:Lcom/join/mgps/enums/ApiName;

    .line 2
    .line 3
    return-object v0
.end method

.method public b(Lcom/join/mgps/enums/ApiName;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "methodName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/event/f;->a:Lcom/join/mgps/enums/ApiName;

    .line 2
    .line 3
    return-void
.end method
