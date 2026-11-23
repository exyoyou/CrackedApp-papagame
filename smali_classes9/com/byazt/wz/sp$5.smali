.class public Lcom/byazt/wz/sp$5;
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
        0x252
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wz/sp;->c(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/Map;

.field public final synthetic tt:Lcom/byazt/wz/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/wz/sp;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wz/sp$5;->tt:Lcom/byazt/wz/sp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/wz/sp$5;->c:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/sp$5;->tt:Lcom/byazt/wz/sp;

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/wz/sp$5;->c:Ljava/util/Map;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/byazt/wz/sp;->c(Lcom/byazt/wz/sp;ILjava/util/Map;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
