.class public final Lcom/byazt/aas/eo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83,
        0x2f
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/aas/eo$c;
    }
.end annotation


# static fields
.field public static volatile c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/byazt/iy/n;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/aas/eo$c;->c:Lcom/byazt/yy/uj$c;

    invoke-static {p0}, Lcom/byazt/aas/eo;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/byazt/yy/uj$c;->c(Ljava/lang/String;)Lcom/byazt/yy/uj$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/yy/uj$c;->c()Lcom/byazt/iy/n;

    move-result-object p0

    return-object p0
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/byazt/aas/eo;->c:Z

    return-void
.end method

.method public static tt()I
    .locals 1

    .line 1
    const/4 v0, 0x3

    return v0
.end method

.method private static tt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    sget-boolean v0, Lcom/byazt/aas/eo;->c:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/nr/gt;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/byazt/nr/gt;->tt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static uj()Lcom/byazt/yy/uj$c;
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->by()I

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/byazt/yy/uj$c;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/byazt/yy/uj$c;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Lcom/byazt/yy/uj$c;->c(Landroid/content/Context;)Lcom/byazt/yy/uj$c;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v1, v2}, Lcom/byazt/yy/uj$c;->c(I)Lcom/byazt/yy/uj$c;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->ck()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {v1, v0}, Lcom/byazt/yy/uj$c;->tt(I)Lcom/byazt/yy/uj$c;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget-boolean v1, Lcom/byazt/aas/eo;->c:Z

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/byazt/yy/uj$c;->c(Z)Lcom/byazt/yy/uj$c;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.method public static synthetic ve()Lcom/byazt/yy/uj$c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/aas/eo;->uj()Lcom/byazt/yy/uj$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
