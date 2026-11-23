.class public final synthetic Lcom/join/mgps/activity/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/WarningDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/WarningDialogActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/ba;->a:Lcom/join/mgps/activity/WarningDialogActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ba;->a:Lcom/join/mgps/activity/WarningDialogActivity;

    invoke-static {v0, p1, p2}, Lcom/join/mgps/activity/WarningDialogActivity;->j(Lcom/join/mgps/activity/WarningDialogActivity;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
