.class public abstract Lcom/byazt/eg/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10,
        0x82
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/eg/m$c;
    }
.end annotation


# static fields
.field public static final c:Lcom/byazt/eg/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/eg/m$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/eg/m$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/eg/m;->c:Lcom/byazt/eg/m;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Lcom/byazt/eg/m;)Lcom/byazt/eg/m$c;
    .locals 1

    .line 3
    new-instance v0, Lcom/byazt/eg/m$2;

    invoke-direct {v0, p0}, Lcom/byazt/eg/m$2;-><init>(Lcom/byazt/eg/m;)V

    return-object v0
.end method


# virtual methods
.method public c(Lcom/byazt/eg/n;Ljava/io/IOException;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lcom/byazt/eg/n;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lcom/byazt/eg/gr;Ljava/io/IOException;)V
    .locals 0

    .line 2
    return-void
.end method
