.class public final synthetic Lcom/xinzhu/overmind/shared/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/xinzhu/overmind/shared/OMLauncherActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xinzhu/overmind/shared/d;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/d;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

    invoke-static {v0, p1}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->a(Lcom/xinzhu/overmind/shared/OMLauncherActivity;Landroid/content/DialogInterface;)V

    return-void
.end method
