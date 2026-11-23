.class public final synthetic Lcom/join/kotlin/module/hmcloud/menu/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/o;->b:Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/o;->b:Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;

    invoke-static {v0, p1, p2, p3}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->P(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
