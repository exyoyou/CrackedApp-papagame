.class public Lcom/sdk/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/String; = "com.sdk.g.b"

.field public static final k:Z


# instance fields
.field public a:Lcom/sdk/base/framework/bean/PInfo;

.field public b:Lcom/sdk/base/framework/bean/AInfo;

.field public c:Lcom/sdk/base/framework/bean/SInfo;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sdk/base/framework/bean/KInfo;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/sdk/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/e/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public f:Landroid/content/Context;

.field public g:Ljava/lang/String;

.field public h:Lcom/sdk/f/c;

.field public i:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sdk/f/d;->a:Z

    sput-boolean v0, Lcom/sdk/g/b;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sdk/e/a;Ljava/util/List;Lcom/sdk/f/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sdk/e/a<",
            "TT;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sdk/f/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sdk/g/b;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/sdk/g/b;->e:Lcom/sdk/e/a;

    iput-object p4, p0, Lcom/sdk/g/b;->h:Lcom/sdk/f/c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/sdk/base/framework/bean/DataInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sdk/g/b;->b:Lcom/sdk/base/framework/bean/AInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sdk/g/b;->f:Landroid/content/Context;

    .line 3
    sget-object v1, Lcom/sdk/t/a;->e:Ljava/lang/String;

    .line 4
    invoke-static {v0, v1}, Lcom/sdk/f/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/sdk/base/framework/bean/AInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sdk/g/b;->b:Lcom/sdk/base/framework/bean/AInfo;

    :cond_0
    iget-object v0, p0, Lcom/sdk/g/b;->c:Lcom/sdk/base/framework/bean/SInfo;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/sdk/base/framework/bean/SInfo;

    invoke-direct {v0}, Lcom/sdk/base/framework/bean/SInfo;-><init>()V

    sget-object v1, Lcom/sdk/base/module/config/BaseConfig;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sdk/base/framework/bean/SInfo;->setN(Ljava/lang/String;)V

    sget v1, Lcom/sdk/base/module/config/BaseConfig;->c:I

    invoke-virtual {v0, v1}, Lcom/sdk/base/framework/bean/SInfo;->setC(I)V

    sget-object v1, Lcom/sdk/base/module/config/BaseConfig;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sdk/base/framework/bean/SInfo;->setV(Ljava/lang/String;)V

    sget-object v1, Lcom/sdk/base/module/config/BaseConfig;->cm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sdk/base/framework/bean/SInfo;->setCm(Ljava/lang/String;)V

    .line 6
    iput-object v0, p0, Lcom/sdk/g/b;->c:Lcom/sdk/base/framework/bean/SInfo;

    :cond_1
    iget-object v0, p0, Lcom/sdk/g/b;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/sdk/g/b;->d:Ljava/util/ArrayList;

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sdk/base/framework/bean/MobileKInfo;

    invoke-direct {v1}, Lcom/sdk/base/framework/bean/MobileKInfo;-><init>()V

    iget-object v2, p0, Lcom/sdk/g/b;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdk/f/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sdk/base/framework/bean/MobileKInfo;->setCn(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sdk/g/b;->a:Lcom/sdk/base/framework/bean/PInfo;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/sdk/f/a;->a()Lcom/sdk/base/framework/bean/PInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sdk/g/b;->a:Lcom/sdk/base/framework/bean/PInfo;

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{app:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sdk/g/b;->b:Lcom/sdk/base/framework/bean/AInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",sdk:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sdk/g/b;->c:Lcom/sdk/base/framework/bean/SInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sdk/g/b;->a:Lcom/sdk/base/framework/bean/PInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",sim:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",data:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/sdk/g/b;->j:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-boolean v1, Lcom/sdk/g/b;->k:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sdk/base/framework/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lcom/sdk/p/f;->a()Lcom/sdk/p/f;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/sdk/p/f;->a:Lcom/sdk/q/a;

    invoke-interface {v0, p2, p3, p1}, Lcom/sdk/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(IILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sdk/g/b;->e:Lcom/sdk/e/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/sdk/e/a;->a(IILjava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sdk/g/b;->e:Lcom/sdk/e/a;

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ITT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sdk/g/b;->e:Lcom/sdk/e/a;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sdk/e/a;->onSuccess(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sdk/g/b;->e:Lcom/sdk/e/a;

    :cond_0
    return-void
.end method
