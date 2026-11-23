.class public final Lcom/byazt/di/da$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x159,
        0x138
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/di/da;->c(Landroid/content/Context;)Lcom/byazt/di/da;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/di/da$1;->c:Landroid/content/Context;

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
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/di/da;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/di/da$1;->c:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/byazt/di/da;-><init>(Landroid/content/Context;Lcom/byazt/di/da$1;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/di/da;->c(Lcom/byazt/di/da;)Lcom/byazt/di/da;

    .line 10
    .line 11
    .line 12
    return-void
.end method
