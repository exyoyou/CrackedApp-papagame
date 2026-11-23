.class Lcom/join/mgps/activity/MYAccountReginActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MYAccountReginActivity;->afterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/MYAccountReginActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MYAccountReginActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MYAccountReginActivity$c;->b:Lcom/join/mgps/activity/MYAccountReginActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editable"
        }
    .end annotation

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "charSequence",
            "i",
            "i1",
            "i2"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "charSequence",
            "i",
            "i1",
            "i2"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/MYAccountReginActivity$c;->b:Lcom/join/mgps/activity/MYAccountReginActivity;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p2, p1}, Lcom/join/mgps/activity/MYAccountReginActivity;->access$302(Lcom/join/mgps/activity/MYAccountReginActivity;I)I

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountReginActivity$c;->b:Lcom/join/mgps/activity/MYAccountReginActivity;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/join/mgps/activity/MYAccountReginActivity;->access$100(Lcom/join/mgps/activity/MYAccountReginActivity;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
