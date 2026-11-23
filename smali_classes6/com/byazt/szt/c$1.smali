.class public Lcom/byazt/szt/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nr/tt$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x6b6,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/szt/c;->c(Ljava/lang/Class;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/szt/c;


# direct methods
.method public constructor <init>(Lcom/byazt/szt/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/szt/c$1;->c:Lcom/byazt/szt/c;

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
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/szt/c$1;->c:Lcom/byazt/szt/c;

    invoke-static {v0}, Lcom/byazt/szt/c;->c(Lcom/byazt/szt/c;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "is_open_web_page"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method
