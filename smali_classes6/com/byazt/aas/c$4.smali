.class public Lcom/byazt/aas/c$4;
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
        0x62
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/aas/c;->onActivityStopped(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Lcom/byazt/aas/c;

.field public final synthetic ve:Landroid/view/Window;


# direct methods
.method public constructor <init>(Lcom/byazt/aas/c;Landroid/app/Activity;Ljava/lang/String;Landroid/view/Window;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/aas/c$4;->uj:Lcom/byazt/aas/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/aas/c$4;->c:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/aas/c$4;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/aas/c$4;->ve:Landroid/view/Window;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/aas/c$4;->uj:Lcom/byazt/aas/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/aas/c$4;->c:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/aas/c$4;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/byazt/aas/c$4;->ve:Landroid/view/Window;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/aas/c;->tt(Lcom/byazt/aas/c;Landroid/app/Activity;Ljava/lang/String;Landroid/view/Window;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
