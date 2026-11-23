.class public Lcom/byazt/wh/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x494,
        0x188
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wh/a;->sp()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/wh/a;


# direct methods
.method public constructor <init>(Lcom/byazt/wh/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wh/a$3;->c:Lcom/byazt/wh/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/wh/a$3;->c:Lcom/byazt/wh/a;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/byazt/zz/SqlDownloadCacheService;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
