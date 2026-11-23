.class public Lcom/byazt/lcf/TTBaseVideoActivity$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26,
        0x60d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/lcf/TTBaseVideoActivity$8;->onSystemUiVisibilityChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/lcf/TTBaseVideoActivity$8;


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity$8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$8$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity$8;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$8$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity$8;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity$8;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/byazt/aas/pf;->c(Landroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
