.class public final synthetic Lcom/papa91/arc/ext/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/widget/Toast;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Toast;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/ext/a;->b:Landroid/widget/Toast;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/ext/a;->b:Landroid/widget/Toast;

    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->a(Landroid/widget/Toast;)V

    return-void
.end method
