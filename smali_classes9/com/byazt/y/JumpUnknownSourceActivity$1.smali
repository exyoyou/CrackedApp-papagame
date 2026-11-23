.class public Lcom/byazt/y/JumpUnknownSourceActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x284,
        0x8e8
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/y/JumpUnknownSourceActivity;->tt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/y/JumpUnknownSourceActivity;


# direct methods
.method public constructor <init>(Lcom/byazt/y/JumpUnknownSourceActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/y/JumpUnknownSourceActivity$1;->c:Lcom/byazt/y/JumpUnknownSourceActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/byazt/y/JumpUnknownSourceActivity$1;->c:Lcom/byazt/y/JumpUnknownSourceActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/y/JumpUnknownSourceActivity;->c(Lcom/byazt/y/JumpUnknownSourceActivity;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/y/JumpUnknownSourceActivity$1;->c:Lcom/byazt/y/JumpUnknownSourceActivity;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/byazt/y/JumpUnknownSourceActivity;->c(Lcom/byazt/y/JumpUnknownSourceActivity;)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-static {p1, v0, v1}, Lcom/byazt/z/tt;->c(Landroid/content/Context;Landroid/content/Intent;Z)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/byazt/y/JumpUnknownSourceActivity$1;->c:Lcom/byazt/y/JumpUnknownSourceActivity;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/byazt/y/JumpUnknownSourceActivity;->tt(Lcom/byazt/y/JumpUnknownSourceActivity;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-object v0, p0, Lcom/byazt/y/JumpUnknownSourceActivity$1;->c:Lcom/byazt/y/JumpUnknownSourceActivity;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/byazt/y/JumpUnknownSourceActivity;->ve(Lcom/byazt/y/JumpUnknownSourceActivity;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {p1, v0}, Lcom/byazt/z/tt;->tt(ILorg/json/JSONObject;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/byazt/y/JumpUnknownSourceActivity$1;->c:Lcom/byazt/y/JumpUnknownSourceActivity;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
