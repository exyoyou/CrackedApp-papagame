.class public final synthetic Lcom/join/kotlin/ui/cloudarchive/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;Landroid/content/Context;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/x0;->b:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/x0;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/join/kotlin/ui/cloudarchive/x0;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/x0;->b:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/x0;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/x0;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1, v2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->a(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;Landroid/content/Context;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method
