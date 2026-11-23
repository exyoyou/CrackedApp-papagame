.class Lcom/join/mgps/activity/MyGameUpdateManagerActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/c0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyGameUpdateManagerActivity;->onClickPlug(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MyGameUpdateManagerActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyGameUpdateManagerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyGameUpdateManagerActivity$b;->a:Lcom/join/mgps/activity/MyGameUpdateManagerActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameUpdateManagerActivity$b;->a:Lcom/join/mgps/activity/MyGameUpdateManagerActivity;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/MyGameUpdateManagerActivity;->deletePlug(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameUpdateManagerActivity$b;->a:Lcom/join/mgps/activity/MyGameUpdateManagerActivity;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/MyGameUpdateManagerActivity;->reinstallPlug(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
