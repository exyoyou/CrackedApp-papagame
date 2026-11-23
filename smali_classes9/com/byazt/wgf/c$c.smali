.class public Lcom/byazt/wgf/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xb2,
        0x2c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/wgf/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/wgf/c;

.field public final tt:Ljava/io/File;


# direct methods
.method private constructor <init>(Lcom/byazt/wgf/c;Ljava/io/File;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/wgf/c$c;->c:Lcom/byazt/wgf/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/byazt/wgf/c$c;->tt:Ljava/io/File;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/wgf/c;Ljava/io/File;Lcom/byazt/wgf/c$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/wgf/c$c;-><init>(Lcom/byazt/wgf/c;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/byazt/wgf/c$c;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/wgf/c$c;->c:Lcom/byazt/wgf/c;

    iget-object v1, p0, Lcom/byazt/wgf/c$c;->tt:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/byazt/wgf/c;->c(Lcom/byazt/wgf/c;Ljava/io/File;)V

    const/4 v0, 0x0

    return-object v0
.end method
