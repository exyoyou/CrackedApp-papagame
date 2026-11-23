.class public Ll6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/join/mgps/dto/GameOLHeadAdBean;

.field private b:Lcom/join/mgps/dto/GameOLHeadAdBean;


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
.method public a()Lcom/join/mgps/dto/GameOLHeadAdBean;
    .locals 1

    .line 1
    iget-object v0, p0, Ll6/b;->a:Lcom/join/mgps/dto/GameOLHeadAdBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lcom/join/mgps/dto/GameOLHeadAdBean;
    .locals 1

    .line 1
    iget-object v0, p0, Ll6/b;->b:Lcom/join/mgps/dto/GameOLHeadAdBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Lcom/join/mgps/dto/GameOLHeadAdBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "left"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ll6/b;->a:Lcom/join/mgps/dto/GameOLHeadAdBean;

    .line 2
    .line 3
    return-void
.end method

.method public d(Lcom/join/mgps/dto/GameOLHeadAdBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "right"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ll6/b;->b:Lcom/join/mgps/dto/GameOLHeadAdBean;

    .line 2
    .line 3
    return-void
.end method
