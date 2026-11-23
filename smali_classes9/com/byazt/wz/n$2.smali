.class public Lcom/byazt/wz/n$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x41,
        0x202
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wz/n;->c(Ljava/util/Map;Lcom/byazt/wrq/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/wrq/c;

.field public final synthetic tt:Ljava/util/Map;

.field public final synthetic ve:Lcom/byazt/wz/n;


# direct methods
.method public constructor <init>(Lcom/byazt/wz/n;Lcom/byazt/wrq/c;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wz/n$2;->ve:Lcom/byazt/wz/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/wz/n$2;->c:Lcom/byazt/wrq/c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/wz/n$2;->tt:Ljava/util/Map;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/n$2;->ve:Lcom/byazt/wz/n;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/wz/n$2;->c:Lcom/byazt/wrq/c;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/wz/n$2;->tt:Ljava/util/Map;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/byazt/wz/n;->c(Lcom/byazt/wz/n;Lcom/byazt/wrq/c;Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
