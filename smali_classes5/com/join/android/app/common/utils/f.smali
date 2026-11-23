.class public final synthetic Lcom/join/android/app/common/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/android/app/common/utils/f;->b:Ljava/io/File;

    iput-object p2, p0, Lcom/join/android/app/common/utils/f;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/android/app/common/utils/f;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/join/android/app/common/utils/f;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/utils/f;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/join/android/app/common/utils/f;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/android/app/common/utils/f;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/android/app/common/utils/f;->e:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2, v3}, Lcom/join/android/app/common/utils/APKUtils$b;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
