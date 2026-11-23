.class public final synthetic Ly5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/android/app/component/video/c;

.field public final synthetic c:Lcom/join/kotlin/ui/modleregin/modle/VideoModle;


# direct methods
.method public synthetic constructor <init>(Lcom/join/android/app/component/video/c;Lcom/join/kotlin/ui/modleregin/modle/VideoModle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly5/a;->b:Lcom/join/android/app/component/video/c;

    iput-object p2, p0, Ly5/a;->c:Lcom/join/kotlin/ui/modleregin/modle/VideoModle;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly5/a;->b:Lcom/join/android/app/component/video/c;

    iget-object v1, p0, Ly5/a;->c:Lcom/join/kotlin/ui/modleregin/modle/VideoModle;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/bindingadapter/ViewBindingVideoFramlayoutKt;->a(Lcom/join/android/app/component/video/c;Lcom/join/kotlin/ui/modleregin/modle/VideoModle;Landroid/view/View;)V

    return-void
.end method
