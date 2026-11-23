.class public final synthetic Lcom/google/android/material/color/utilities/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/google/android/material/color/utilities/l;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/color/utilities/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/color/utilities/i;->b:Lcom/google/android/material/color/utilities/l;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/color/utilities/i;->b:Lcom/google/android/material/color/utilities/l;

    check-cast p1, Lcom/google/android/material/color/utilities/k;

    invoke-static {v0, p1}, Lcom/google/android/material/color/utilities/j;->b(Lcom/google/android/material/color/utilities/l;Lcom/google/android/material/color/utilities/k;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
