.class public Lcom/byazt/aas/cu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83,
        0x79
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final tt:Lcom/byazt/nr/yv;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/aas/cu;->c:Ljava/util/Set;

    .line 7
    .line 8
    new-instance v0, Lcom/byazt/aas/cu$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/byazt/aas/cu$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/byazt/aas/cu;->tt:Lcom/byazt/nr/yv;

    .line 14
    .line 15
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;)Lcom/byazt/nzi/c;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/byazt/nzi/c;

    invoke-direct {v0}, Lcom/byazt/nzi/c;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->eo()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/nzi/c;->c(I)V

    .line 3
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/nzi/c;->c(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/byazt/nzi/c;->tt(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c()V
    .locals 1

    .line 5
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->yg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/byazt/aas/cu;->tt:Lcom/byazt/nr/yv;

    invoke-static {v0}, Lcom/byazt/nr/zm;->c(Lcom/byazt/nr/yv;)V

    return-void

    .line 7
    :cond_0
    sget-object v0, Lcom/byazt/aas/cu;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public static c(I)V
    .locals 2

    .line 8
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->yg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/byazt/aas/cu;->c:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    sget-object v0, Lcom/byazt/aas/cu;->tt:Lcom/byazt/nr/yv;

    invoke-virtual {v0, p0}, Lcom/byazt/nr/yv;->ve(I)V

    return-void
.end method

.method public static synthetic tt()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/aas/cu;->c:Ljava/util/Set;

    return-object v0
.end method

.method public static tt(I)V
    .locals 2

    .line 2
    sget-object v0, Lcom/byazt/aas/cu;->c:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lcom/byazt/aas/cu;->tt:Lcom/byazt/nr/yv;

    invoke-virtual {v0, p0}, Lcom/byazt/nr/yv;->tt(I)V

    return-void
.end method
