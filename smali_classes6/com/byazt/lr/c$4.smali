.class public Lcom/byazt/lr/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9b,
        0x62
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/lr/c;->tt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/lr/c;


# direct methods
.method public constructor <init>(Lcom/byazt/lr/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lr/c$4;->c:Lcom/byazt/lr/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/lr/tt;->c()Lcom/byazt/lr/tt;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/byazt/lr/c$4;->c:Lcom/byazt/lr/c;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/byazt/lr/c;->ve(Lcom/byazt/lr/c;)Landroid/app/Activity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/byazt/lr/tt;->c(Landroid/app/Activity;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/byazt/lr/c$4;->c:Lcom/byazt/lr/c;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/byazt/lr/c;->c(Lcom/byazt/lr/c;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-string p1, "lp_app_dialog_click_privacy"

    .line 21
    .line 22
    invoke-static {p1, v0, v1}, Lcom/byazt/lr/sp;->c(Ljava/lang/String;J)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
