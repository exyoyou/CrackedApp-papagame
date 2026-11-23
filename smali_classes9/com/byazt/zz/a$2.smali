.class public Lcom/byazt/zz/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/c/cu;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xbd,
        0xfe
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zz/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/zz/a;


# direct methods
.method public constructor <init>(Lcom/byazt/zz/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zz/a$2;->c:Lcom/byazt/zz/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/a$2;->c:Lcom/byazt/zz/a;

    invoke-static {v0}, Lcom/byazt/zz/a;->ve(Lcom/byazt/zz/a;)V

    return-void
.end method

.method public c(Lcom/byazt/m/BaseException;)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/byazt/zz/a;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveFileAsTargetName onFailed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/byazt/m/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/zz/a$2;->c:Lcom/byazt/zz/a;

    invoke-virtual {v0, p1}, Lcom/byazt/zz/a;->c(Lcom/byazt/m/BaseException;)V

    return-void
.end method
