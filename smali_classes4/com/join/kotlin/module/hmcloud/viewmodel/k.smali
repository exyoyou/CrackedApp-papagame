.class public final synthetic Lcom/join/kotlin/module/hmcloud/viewmodel/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/k;->b:Ljava/io/File;

    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/k;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/k;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/k;->c:Ljava/lang/String;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->b(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
