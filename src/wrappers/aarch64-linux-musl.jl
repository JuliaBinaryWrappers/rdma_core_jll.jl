# Autogenerated wrapper script for rdma_core_jll for aarch64-linux-musl
export lbrdmacm, libibverbs

using libnl_jll
JLLWrappers.@generate_wrapper_header("rdma_core")
JLLWrappers.@declare_library_product(lbrdmacm, "librdmacm.so.1")
JLLWrappers.@declare_library_product(libibverbs, "libibverbs.so.1")
function __init__()
    JLLWrappers.@generate_init_header(libnl_jll)
    JLLWrappers.@init_library_product(
        lbrdmacm,
        "lib/librdmacm.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libibverbs,
        "lib/libibverbs.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
    if !haskey(ENV, "JULIA_IBV_CONFIG_DIR")
        ENV["JULIA_IBV_CONFIG_DIR"] = joinpath(artifact_dir, "etc", "libibverbs.d")
    end

end  # __init__()
