.class public Lcom/byazt/jj/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x124,
        0xd
    }
.end annotation


# static fields
.field public static c:Z


# direct methods
.method public static c(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/byazt/jj/tt;->c:Z

    return-void
.end method

.method public static c()Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->lr()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    sget-boolean v0, Lcom/byazt/jj/tt;->c:Z

    return v0
.end method
