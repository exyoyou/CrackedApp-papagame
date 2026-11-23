.class public Lcom/sigmob/sdk/base/common/an$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/common/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/sigmob/sdk/base/common/am;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/sigmob/sdk/base/common/an$b;

.field private c:Lcom/sigmob/sdk/base/common/an$b;

.field private d:Lcom/sigmob/sdk/base/common/an$c;

.field private e:Z

.field private f:Z

.field private g:Lcom/sigmob/sdk/base/models/BaseAdUnit;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/base/common/am;->h:Lcom/sigmob/sdk/base/common/am;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/an$a;->a:Ljava/util/EnumSet;

    invoke-static {}, Lcom/sigmob/sdk/base/common/an;->b()Lcom/sigmob/sdk/base/common/an$b;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/an$a;->b:Lcom/sigmob/sdk/base/common/an$b;

    invoke-static {}, Lcom/sigmob/sdk/base/common/an;->b()Lcom/sigmob/sdk/base/common/an$b;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/an$a;->c:Lcom/sigmob/sdk/base/common/an$b;

    invoke-static {}, Lcom/sigmob/sdk/base/common/an;->c()Lcom/sigmob/sdk/base/common/an$c;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/an$a;->d:Lcom/sigmob/sdk/base/common/an$c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/an$a;->e:Z

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/an$a;->f:Z

    return-void
.end method


# virtual methods
.method public varargs a(Lcom/sigmob/sdk/base/common/am;[Lcom/sigmob/sdk/base/common/am;)Lcom/sigmob/sdk/base/common/an$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "first",
            "others"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/an$a;->a:Ljava/util/EnumSet;

    return-object p0
.end method

.method public a(Lcom/sigmob/sdk/base/common/an$b;)Lcom/sigmob/sdk/base/common/an$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultActions"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/an$a;->b:Lcom/sigmob/sdk/base/common/an$b;

    return-object p0
.end method

.method public a(Lcom/sigmob/sdk/base/common/an$c;)Lcom/sigmob/sdk/base/common/an$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sigmobSchemeListener"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/an$a;->d:Lcom/sigmob/sdk/base/common/an$c;

    return-object p0
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/common/an$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adunit"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/an$a;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method

.method public a(Z)Lcom/sigmob/sdk/base/common/an$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skip"
        }
    .end annotation

    .line 5
    iput-boolean p1, p0, Lcom/sigmob/sdk/base/common/an$a;->e:Z

    return-object p0
.end method

.method public a()Lcom/sigmob/sdk/base/common/an;
    .locals 10

    .line 6
    new-instance v9, Lcom/sigmob/sdk/base/common/an;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/an$a;->a:Ljava/util/EnumSet;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/an$a;->b:Lcom/sigmob/sdk/base/common/an$b;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/an$a;->c:Lcom/sigmob/sdk/base/common/an$b;

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/an$a;->d:Lcom/sigmob/sdk/base/common/an$c;

    iget-boolean v5, p0, Lcom/sigmob/sdk/base/common/an$a;->e:Z

    iget-object v6, p0, Lcom/sigmob/sdk/base/common/an$a;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-boolean v7, p0, Lcom/sigmob/sdk/base/common/an$a;->f:Z

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/sigmob/sdk/base/common/an;-><init>(Ljava/util/EnumSet;Lcom/sigmob/sdk/base/common/an$b;Lcom/sigmob/sdk/base/common/an$b;Lcom/sigmob/sdk/base/common/an$c;ZLcom/sigmob/sdk/base/models/BaseAdUnit;ZLcom/sigmob/sdk/base/common/an$1;)V

    return-object v9
.end method

.method public b(Lcom/sigmob/sdk/base/common/an$b;)Lcom/sigmob/sdk/base/common/an$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultActions"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/an$a;->c:Lcom/sigmob/sdk/base/common/an$b;

    return-object p0
.end method

.method public b(Z)Lcom/sigmob/sdk/base/common/an$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2
    iput-boolean p1, p0, Lcom/sigmob/sdk/base/common/an$a;->f:Z

    return-object p0
.end method
