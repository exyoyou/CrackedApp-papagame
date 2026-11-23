.class public Lcom/byazt/aas/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83,
        0x5d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/aas/c;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic tt:Lcom/byazt/aas/c;


# direct methods
.method public constructor <init>(Lcom/byazt/aas/c;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/aas/c$3;->tt:Lcom/byazt/aas/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/aas/c$3;->c:Landroid/app/Activity;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/aas/c$3;->tt:Lcom/byazt/aas/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/aas/c$3;->c:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/aas/c;->tt(Lcom/byazt/aas/c;Landroid/app/Activity;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
